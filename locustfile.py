from locust import HttpUser, task, between

class HelloUser(HttpUser):
    wait_time = between(1, 3)

    @task
    def visit_home(self):
        self.client.get("/")
