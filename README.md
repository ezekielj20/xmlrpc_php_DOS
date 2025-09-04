<h3 align=center>
    xmlrpc_php_DOS
</h3>

<h6 align=center>
    <a href="https://github.com/ezekielj20/xmlrpc_php_DOS#usage">Usage</a>
    ·
    <a href="https://github.com/ezekielj20/xmlrpc_php_DOS#how-to-install">Install</a>
    ·
    <a href="https://github.com/ezekielj20/xmlrpc_php_DOS#disclaimer">Disclaimer</a>
    ·
    <a href="https://github.com/ezekielj20/xmlrpc_php_DOS#References">References</a>
</h6>

<p align=center>
	A script that can determine whether a website is vulnerable to xmlrpc DOS.
</p>

### How to run script
> <code>./xmlrpc_php_DOS.sh \<url\></code>
<table>
    <tr>
        <th>Value</th>
        <th>Description</th>
    </tr>
    <tr>
        <td>url</td>
        <td>Target url (e.g. 'https://<url>' or 'http://<url>')</td>
    </tr>
</table>

### How to install
> This script required dependencies of `curl >= 8.15.0` or higher.
<details>
<summary>Termux</summary>
	
<span>Make sure you have already installed `git` if you don't, run the code above.</span>
```bash
> pkg update -y
> pkg install git -y
> pkg install figlet
```

<span>Let's cloning it into your computer.</span>
```bash
> git clone https://github.com/ezekielj20/xmlrpc_php_DOS
```
</details>

<details>
<summary>Kali-Linux</summary>
	
<span>Make sure you have already installed `git` if you don't, run the code above.</span>
```bash
> sudo apt-get update -y
> sudo apt-get install git -y
> sudo apt-get install figlet
```

<span>Let's cloning it into your computer.</span>
```bash
> git clone https://github.com/ezekielj20/xmlrpc_php_DOS
```
</details>
	
### Disclaimer
The use of the xmlrpc-dos is COMPLETE RESPONSIBILITY of the END-USER. Developers assume NO liability and are NOT responsible for any misuse or damage caused by this program.
	
### References
<kbd>◉ WP XML-RPC DoS</kbd> https://gist.github.com/ethicalhack3r/60a3ea6d7c86c7ace891 <br>
<kbd>◉ Adelittle repo</kbd> https://github.com/Adelittle/wpdos <br>
<kbd>◉ Adelittle blog</kbd> https://www.nakanosec.com/2022/03/riset-xmlrpc-ddos-attack-bypass-waf.html
