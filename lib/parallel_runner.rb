require 'thread'

module Runner
  def self.parallel(list, concurency = 10, qsize = nil)
    q = qsize ? SizedQueue.new(qsize) : Queue.new
    threads = []
    producer = Thread.start(q, concurency) do |pq, pc|
      list.each do |elem|
        pq.enq([elem, true])
      end
      pc.times{pq.enq([nil, false])}
    end
    workers = []
    concurency.times do
      workers << Thread.start(q) do |wq|
        elem, flg = wq.deq
        while flg
          yield elem
          elem, flg = wq.deq
        end
      end
    end
    producer.join
    workers.each{|w| w.join}
  end
end