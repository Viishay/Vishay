;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.viishay.com. root.viishay.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.viishay.com.
@	IN	NS	ns2.viishay.com.
@	IN	A	192.168.13.1
@	IN	AAAA	2001:db8:1ab:16::1
ns1	IN	A	192.168.13.1
ns2	IN	A	192.168.13.2
ns1	IN	AAAA	2001:db8:1ab:16::1
ns2	IN	AAAA	2001:db8:1ab:16::2
www	IN	CNAME	viishay.com.
mail	IN	A	192.168.13.3
mail	IN	AAAA	2001:db8:1ab:16::3
@	IN	MX	0	mail.viishay.com.	
