# Red Team Lab 

## Summary
 - I have a physical server that hosts my red teaming lab. featuring a dedicated VLAN specifically designed for offensive security operations and penetration testing practice. The lab is structured with multiple elements, each tailored to simulate various stages of an attack chain, including recon, exploitation, post exploitation, and persistance. This setup allows for a intense and realistic environment to practice and refine advanced techniques enhancing my overall skills in the practice.

 - It features the following components:

   - Vulnerable Virtual Machine Generator: This tool can create a wide range of vulnerable VM's, from basic IoT devices to complex enterprise networks. Each containing flags which must be discovered and submitted as both standard and administrative user accounts, providing an always changing testing ground for exploitation and privilege escalation techniques.

   - Active Directory setup - "Game of Active directory": A dedicated Active directory environment designed to emulate the complexities of real-world company configurations. This setup is used to practice post-exploitation, lateral movement, privilege escalation and persistence, all being crucial for improving on my red-teaming abilities. It offers a game-like approach to exploitation while having the theme of the HBO show "Game of thrones" incorporating known characters as users for different parts of the environment.

   - CTF VM's: A diverse collection of CTF challenges sourced from the platform Vulnhub. Each VM is crafted by a different user and presents a wide array of systems and vulnerabilities. Engaging with these challenges assists me in building experience across every platform of offensive security, but penetration testing most of all.

   - Malware Development Environment: A secure and heavily segmented environment designed for creating and testing malware. This setup includes dedicated VM's to evaluate the effectiveness of custom maliscous programs in evading detection and executing inteded actions. The segmentation is necessary to contain the potential risks, while allowing safe experimentation and customization of offensive tools.

   - Malware Reverse Engineering Environment: Although not strictly a red team activity, this environment is dedicated to reverse engineering malware using a REMnux linux distribution. REMnux is a handy malware analysis tailored operating system that once expanded on with personal customization was perfect for me, providing the necessary tools to dissect, understand, and potentially expand my knowledge for my personal programs. This component is invaluable for gaining ideas into how malware operates, improving my defensive capabilities against it with other labs, and understanding how to craft more sophisticated payloads.



## Links to knowledge resources I personally use or use as inspiration

 - Generator: https://github.com/cliffe/SecGen/
 - GOAD: https://github.com/Orange-Cyberdefense/GOAD
 - CTF: https://www.vulnhub.com/
 - Malware Dev [I do not use any other resources but I do use the MALDEV classes to learn so heres that group]: https://maldevacademy.com/
 - REMnux: https://remnux.org/
 - Sliver [The C2 Framework I enjoy most]: https://github.com/BishopFox/sliver

