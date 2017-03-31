from mrjob.job import MRJob


class ModeRevenue(MRJob):
  
    # This is bad practice - make sure you know what you're doing!
    count = 0

    def mapper(self, _, line):
        line_cols = line.split(',')
        yield line_cols[3], float(line_cols[2])

    def combiner(self, mode, counts):
        yield mode, sum(counts)

    def reducer(self, mode, counts):
        self.count += 1
        
        if self.count <= 5:
          yield mode, sum(counts)


if __name__ == '__main__':
    ModeRevenue.run()
