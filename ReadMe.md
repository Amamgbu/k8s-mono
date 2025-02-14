## **Mono Deployment Assessment**

### **Prerequisites**  
Ensure the following are installed:  

- **Vagrant** → [Install Guide](https://developer.hashicorp.com/vagrant/downloads)  
- **Ansible** → [Install Guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- **Virtualbox**
- **ACT** (for simulating GitHub Actions locally) → [Install Guide](https://github.com/nektos/act)  

---

### **Setup & Deployment**  
Run the following commands to provision VMs and set up a multi-node **k3s** cluster:  

```bash
vagrant up
cd ansible
ansible-playbook -i inventory.ini install_k3s_multi_node.yml
```

This initializes the infrastructure and configures **k3s** across nodes.

---

### **Simulating GitHub Actions Locally with ACT**  
To test the GitHub Actions workflow locally before pushing to a repository, use **ACT**:  

```bash
act
```

For a specific job, run:

```bash
act -j <job-name>
```

This allows you to verify CI/CD pipeline execution in a local environment before deploying.  
