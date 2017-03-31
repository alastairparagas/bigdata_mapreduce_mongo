from mrjob.job import MRJob


class CityRevenue(MRJob):

    def mapper(self, _, line):
        line_cols = line.split(',')
        yield line_cols[0], float(line_cols[2])

    def combiner(self, city, counts):
        yield city, sum(counts)

    def reducer(self, city, counts):
        yield city, sum(counts)


if __name__ == '__main__':
    CityRevenue.run()
