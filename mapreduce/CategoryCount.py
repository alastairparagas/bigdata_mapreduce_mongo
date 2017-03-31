from mrjob.job import MRJob


class CategoryCount(MRJob):

    def mapper(self, _, line):
        line_cols = line.split(',')
        yield line_cols[1], 1

    def combiner(self, category, counts):
        yield category, sum(counts)

    def reducer(self, category, counts):
        yield category, sum(counts)


if __name__ == '__main__':
    CategoryCount.run()
