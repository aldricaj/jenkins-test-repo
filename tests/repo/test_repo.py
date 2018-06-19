import unittest
from sample_app.repo import repo
class TestRepo(unittest.TestCase):

    def setUp(self):
        self.repo = repo

    def test_get_return(self):
        self.assertEqual(self.repo.get(), 1123)