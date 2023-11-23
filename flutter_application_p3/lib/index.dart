import 'package:flutter/material.dart';
import 'package:flutter_application_p3/detalhamentoPag.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 37, 37),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment : MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                    ]),
                )
              ],
            ),
             ),

             SizedBox(height: 25.0),
             Padding(
              padding: EdgeInsets.only(left: 40.0),
              // ignore: prefer_const_constructors
              child: Row(
                children: <Widget>[
                  Text( 'Nutrição',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),),
                      SizedBox(width: 10.0),
                       Text( 'Saudável',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                     
                      fontSize: 25.0),)
                ],
              ),
             ),
             SizedBox(height: 40.0,),
        
             Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 300.0,
                      child: ListView(
                        children: [
                          _buildFoodItem(/*'assets/imagem1.png'*/'data:image/jpeg;base64,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', 'Whey Protein 900g', '\$125.90'),
                          _buildFoodItem('https://m.media-amazon.com/images/I/518Vevrl0zL._AC_UF1000,1000_QL80_.jpg', 'Creatina 150g', '\$71.90'),
                          _buildFoodItem('data:image/jpeg;base64,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', 'Multivitamínico 120 caps', '\$45.90'),
                          _buildFoodItem('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxESEhUSEBIVFRAXFRUQFRYVGBoWFhUVFRUXFxYRFRUYHikhGBsmHBYVIjMiJiosLy8vFyA0OTQtOCkuLywBCgoKDg0OGxAQGzAgHiAuLi4sLC4uLiwuLC4sLC4sLi4uLC4uLiwuLi4sLiwsLC4vLi4uLi4uLi4uLi4uLiwuLP/AABEIAOYA2wMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAgMEBQcBBgj/xABMEAABAwIDAgoGBQgIBgMAAAABAAIDBBESITEFUQYHEyIyQWFxgbEjM3KRwdEUUnOhshUkNEJigpKiQ1OTs8LS4fBFVGPD0/EmNXT/xAAaAQEBAQEBAQEAAAAAAAAAAAAAAQIDBAUG/8QAMhEAAgIABQEGBQIHAQAAAAAAAAECEQMSITFBYQQTUXGR8DKBocHRIrEUM0JSosLhBf/aAAwDAQACEQMRAD8A3FCEIAQhNySBoLnEBozJJsAN5JQDiF43bHGbsqmuDUiV/wBWAGXwxt5g8XLyNXx3tccNLROP7U0gZbtwsDr+9WgbAhYLWcbG0n3wcjEOrBGSR4vc4H3Lzu0uH+1HNOKtl/dwx/3bWpQPpxNyStb0nAd5svj+p2/WSesq6l/tTSO83Kuebm7szvOZ95SgfYs22qVnTqYW+1IweZUKThjsxuTq+kB+3j/zL5EwDcEAKA+tHcO9lD/iFN4SsPkUk8YGyf8An6f+0C+TV1WgfWI4wNk/8/T/ANoEtvDrZR/4hS+MrB5lfJiEoH11Fwv2a7o19KT2Tx/5lNh2xTP6FRC72ZGHyK+NyEnCNwSgfazHg5ggjszS18VwvLTdhLTvaS0+8K0puEtfH6utqW2+rPIB7sVkoH2AhfLNHxn7Yjtatc4bpGRvv3ksv969Js7jwr2+ugp5R2B8Tvfdw+5SgfQSFluyOO2iksKiCaE9bhaVg8W2d/KvebF4RUdWL0tRHJ1loNnj2mGzh4hKBbIQhACEIQAhCEBRcLtvCjgMmHFIThY06F1r3PYF8/cK+ENVVuJqJnObfJmkbe5gy8de1a/xun0MXtP8mrDa7VbS0MlRKl7P6XgkyrtB0vBQ0T3KHX9FTHKHX6ICuK4V0pKELirhpGxuMbsUvJsaBiJtI2RrZH9oc25A0AB7FFeyAQWBJqLtkJscNjcGIG+oBaTlqCL5ZwULjDCyqszet6vy08tNjTlfBZSOhEVgWEmNujTyglL8Ti59rWDbttc3sMusNVD4uSY1lsduflzsWJx1LL6YRk/q0UFdVjhJcve/n+OgzD9C9jXh0guwBxw/WOE4W6H9a2uSdp3sL3FwaOacAcOZiuBzgxoGmI6WuBdQ0LUsNPXpXvz56EsntdByji6xYGC2FpsX2Y0kNJabXL3WuNPBR63Byj+TFo8RDbEkWGVxfOx18UwEJGGV3b2orZKkZHybC0nlHZOF+a2ziMR68xhy6rHW4tJn2e0SMjBcMUhiu4tddmJobKLAWBu6wz01VYugKOEuJePXfb0+vPIteA9UQFhAdk4tDiCLFpN7NPbax8Uhq4uhdFdamR6NWez5XNcHNJa4G4c0kEHeCMwqyNWFIqDfeLLhRNUtMNQ7G9rcTXnpFoIBa7ecxn33Xv1jnE+fzk/Zu+C2NZYQIQhQoIQhAeA43B6KHvf5NWG1+pW7cbLfQRH9pw94HyWF17c1tbEKeZdoukioTcDrOBUKWblDr9FMKiVw5qArrLll1dQgiyLLt0XUByy4lXXLqg4iyF0FAAXUXRdAC6gFdQHAEsBcCUEAuNWFGoDFY0YVBq3FD+k/uOWyLH+KBn5wTujd5hbApIIEIQslBCEIDyHGbBipAfqyD3Frh8lgm0tSty409piOnbF+s92Lua3/AFI9xWEV8+ZyW1sQqp2phmRunZZCu0TQ4m+dlATYnhwuEmRgIsUslQa+Q6XQoxVwtbofBQySnElCCCSi5S1yyhROaM0qyEAnNGaWhWgIuVN2JHiniaQCC8XB6wM7fcotlc8FIMVQD9Vrn+PRH4j7kIesds2A6wx/wN+SaOxqb+pZ4C3krBdWiFS/g/TH+jt3OcPimn8GIDoXt7nA+YV2hSgeedwVH6sp/eaD94ISotgytOWFw7DY+4r0IKdjcqD1/FFSFr5HOFiGYc/2nD/KtPWZ8X+0cE+A6SDD46j5eK0xZluVAhCFkoIQhAZLxvP9O0bom/icVkVYtb42/wBIH2bfNyyWs1W+DJWSp3Z+pTcqc2fqVDRMKr9oahWBVdtDUICKuLRaXZtDDSQGpjpHGSkknfie/wCmvll5Q07IWNdYD1YxEaXVxX8G6T09O2Ojc1ho6JpiDvpcdRO+ON00zycI53KmwvfLtQhkCFrlLsaKeSaGTZ8MMIrqekpCIuTlexsrnTOMjs5ByMRJ9pSzsmlkMJdSxNY6uc7nUYpHsp6eJ87221lYQGtLjYdVs0oGMLhIXqtobKf6GSKneY5Y/pUrmxXjbyjnvDGlrbNDWYRa6l0e0HQ7Ka9kMBmmrHwwl0MT3GNrMUmbmknnva0X0tksYWLhYuGp4cr3T6V89nxtZXGUXUlR4q6LrVtr7KdE2Y7Po2y1Ec9PsxtoWzcm2KnD5ZS0tIDnSPDS927VK2Lshgqn1NVDRNkknjo44C+MQkMcxlVPG11g917sAaOm5y2QykL1XAuDmyP3lrB+6Ln8QXn9rUwiqJohoyaWMdzHuaPJey4Nw4Kdm9wLz+8bj7rKhlohCFSAuri6gAJxibCcYgL3gy608R/6jPxBbGsb4O+uj9tn4gtkUkIghCFg0CEIQGScbg/OB9k3zcskrdVrnG568fZt83LJK3VdOEZKyVL2fqUiVLoOke5ZNE0qv2hqFYFV+0NQgGp6uR7mue9znNaxjSTm1sYAY1p6g0AW7lLiqi6OVz6mUTOkbJbG8iR4c200hAN3NvIbk3va3bWriWQvKjaJe8PdW1Di2QCN75JS9jHYcbhlkbF97EdEZG6iSbRc573STTOAa9sZMjy44iBhJJuGkXJHZ1qtXVAWsdTFhwullw8iRhDn4TJYYW2yAGt9RprmodPIyzWyF+T2kWJwtaSDI4N6nZDTW/YLxVwpSRSzkq2tEhimlD3O/Vc8B3q+c4nUeuGeebe1V5kdlznc3o5nm535u7PPJJQqQW0Oe61yXONrnMlzjqT1m5WmRsDQGjQAAdwFl4Hg5DjqIx1Al5/dFx99l79VA6hcQqQ6upKUgAJyNNhOMQF5we9dH7bPxBbIsa4Peuj9tv4gtlUkIghCFg0CEIQGTcbg9OPs2+blklbqVrfG+fTN+zb+JyySu1W+DJVTapdD0vBNT6p2h6XgoaJxVftDUKwKg14AtfPLT4lUMl8G+Dk9bIGxgtjzxSkEsbbq6sR6rBS9ncD5pquWmY8YYXYZJSDYbrNvmTnlfqOavOLDbkxmbSc3kMMklg3nYsj0vFX+ynkflZzcnCWUgjI3EJIPvXwO2dvx8HFxIaaJZed5JW+tXpttvuevCwYSjF9Xfpt/3c8twh4vJIInTQzcs1gLntLcLsI6Tm2JBtu81X8E+B0la0yOfyUAOHFa7nEahouBYbyvS8U8hdT1LSbtDm2HVzmG+XbYKOyQjg8C3InI2yuDVWIPeMlZdq7RBy7O53JThFTpLSab2Tq1WnnrwFhwaU60yt1fh1KnhXwHfSxGeKTlYRbFlZzQcg7LJzb+5Oz8FaUMfCHy/TWUv0wuy5JwtcxAajv/APSt+DchdsSovnZtSBuADL2A7ySn54n/AEmafCeQOyrcpbmXsDYO68gcl5sXt2PFvDc9YN66LNTjVrZ7vTnk6RwoPWt0tPAz7g3ss1VQyLRh58jvqxtzcb9W7vIT1Hs+KorRBC4shfI5jHHnuwtBIcdL3w38VbUL/oeznTOynqvRR5AEQt6Tu4/FqreA/wCn0/tn8Dl9nEnNrFxYv9MU1HzircuV8X6U+j8bfkUUnGL3dX8+Pye42RwBbTvLxUFxwloBYBa5Bvk47lOpdllz3MccJaAche90qeMiuLhq4wjvAHlmVcM/SHfZN/EV8qXbO1YWDmc7csPOnSTi7XSnvyvKj1LCw5S0Wzrd67lFs+g5Vzm4rYey987b0/RbI5RuLHbMi1r6G29O7A9ZJ/v9Yod+iO9s/wB4vV2ntGP38sKE8v6sNLROsyle611p6+Byw8OGRSavST9KItXs10bmtJuHENDrdd+seKkS7CLQTygyBPR3DvTrj6KnvryjfMqLttjuVcbHDzc7G2g60w8btOLOGH3ii1nt5U82WeXZ7XfHoWUMOKcst7cvS0VwTjEgJbF9o8ZdcH/XR+238QWzLGtgetZ7bfMLZVJCIIQhYNAhCEBknHF61v2bPxOWT1vWtZ44vXM9hn4nLJq5bRCon1TlD0k1Nql0XSURSxKh7SjJd1e8fNWVPGHOs6+GznG2tmtLiB25KDXuguOZL4SM/wDEsudaU35Uv3FdS64sGEV7dPVS9YO7cV6/Zrf/ALftkl/uT7l5PgC+GOsikxYGuhmJ5R7bDnFo52FozwnJXex9vU7K6ugme0RTyXY+4wE4cJaXaC4OR0y7l+c/9GDxcbEcYvSEXXlPXbnf0PfgNRjG3y/qhHFK30NTprH1g/qO3KO1n/x8DLXeLfpe/RWrTRbIppeSm5SWTNrS5rnOcG2YLNGTRfM9p7AqngZtClqKJ2zql4jN3YSSG4gX8oCwnLEHdXYFMSfeTn2qMXk7zDe2tRTT/de7ollSw21eWS+bqh/gw22xaoH6tT/dXXjtifSap8dE2aTkXOALMRwtYM3G24C+Wl7L2/CCspKChfRwSCSWRrmWxBzvSZOkfhyaA3Qdg715vYDxSUctVccvMTTQi+bWC5kk7ND/AAjevT2Z33uJBfzJ1h2uW2lLpV2/Jrz54i+GMv6Vr+C0FdFNPVzNjY+KjpiymY8YoxgNsZb15t91kiOJn5Q2dMyNsbp4mTyNYLMxlrrlrepUvA2Vn5zC+Rsbp6d0UbnnCzH1Nc7qvf7irc1ULa7Z8YlY4U8TIZHtPo8dnAgO6+r3rnPC7vHlhwulBrn4e79Pj/yNRnmim6u+m+b8HvK7aLI32LLvsDfLr6r6qNsWoMkr3O1LR4DFkFD228Olu0gjCMwbpOyKsRvu7okYSd24rpHsEf4ByhF55QXjfDpXt5eRnv336UnomTNgesk/3+sn6SYMgLnDEA52WXW+3WutfBDie1wJdnYEHtsLaC6giob9FLS4Yy69uvpg6LnOP8TiPEyyySnhLZp6JqXpe/1NJ93GrVpS8OlErazjjht0CQR33HwITe26513RWGHm5536ikyVLHRQ3cMTHNuOuwNifuBT1aaV+Jxdd9srE6gZZK4UI4TwliYcpZM60i3qpqnxxrezE25KTjJK654rVFGEtiQEti/RHgLvYHrWe03zC2VYzsH1rPab5hbMpIRBCELBoEIQgMo44h6WP2G/ieskrlrnHB62P2B+J6ySuWyFJMM05R9IInC5SdILJS6p8hIdzLDvc5rbfwl3uUSWmYW4nkjO3+8lKGUR/ae0fwNJP42pmSHHHhva7rfeMkju/eyX3sMiVNMDJG09DBgG/mgk+8knxTc9NC0EB5xAHLt3aKbWS4p2G2pe7+IHIKFtClIu+4sTp15otF797kFMoYbEtcbDUi3yXIKRjnGxJaMJBy193YuUXqpO4+SXQuwxl37Q+AWr1sUQKiIMcWjQFLo4g51t+Xbn/oCndqts++8A/D4Jey2537/usB5lWO7fvp9aIxmvpQy1rkG+vYpdDQtMsAF+c4OP7oxfBN1zsUYd+0fiPkrnYEOKVjvqxl3iQ1vkSoU9DWTYGOcNQMu/qUbZVY6TFitcW03G/wAkbcfaK28gfH4JjZrcEzmb2g/cD8SqQc2dXOe5zXWyFxYbjY/BNRbQkLWG4uZMBy6ub8yodGcMmPqxlh/ev/vwRB0I/tvg1LBYU1a8mUE5tDi3Ldf/AERNVvEDXg88m17Dt6vBQWZPe7qJkjPiCR96kDOOBu8uPuv80BbUr8TGk6loJ77ZqSxQNlOvE3ut7iQp7EBc7D9az2m+YWzLGNiesZ7Q81s6khEEIQsGgQhCAyrjeHpo/sx5vWR1i1zjf9dF9nf+ZyyOr0WyFVOk0vSCVMk0/SChS4myYwb8UnvOH/trkBIbcdIYi32g04f5rLtZqBuYweJaHH73FQ5pC1j3AkdBg7HOOK/8Mbh4rk6ya7P/AGdfcvJ3DhMLT0hce5llDrKZ+JzsJw3Jv2b0xyzsWK5xb0p1ZIQQXZHLqXYySKL1Uncfwpxj2shbiFwervubqvZM4AgHI6pyZznBovcAC2m5IpvYMf2pmGOGh+NiEqg5oc49TR8XHzCiOLyA0nmjTTLxXHVDucAeaScsu7yWqaT9+f2JZNc9r4nYBYDq7s1d8H52MHPIF2ttfuXlI5nNBAOR10XseD9C10DHSNu43OpHNuQ3TsCyVju15BJyYYbhxNj4hvzSIonRzsDnYiRrn13Fs+4KzbRRjDZvR6OuWd/NOPhaSHEAkaHcqQpIIsUc28ODh4X+F01D0GfbfBq9BHC1t8LQL69veuNp2DIMba9xkNd6AqOTxRzbxJi9xN/uuiGISckw6YHHL2j8ldBgF7AZ65a966AgImyRZhbue4KxYm04xAXGxfWN9oea2dYvsbpt7x5raFJCIIQhYNAhCEBlXG6fTxfY3/ncsjrNFrHG6fzmP7D/AByLKKwZLSDKiQpEPSCVJqkRdId6IF3XH0j/AGnW7rmwUComaBhe0kEh3NdgIIBGpa6/SPUrOWF0nPjBcTm9oF3Nd1nCM8JOd+23UqnaNO8EXY4d7SPguayuKi+OtP7Mru7I2KH6kv8Aas/8SVeD6s38bD/21Gcba5JOMbwr3K4v1l+Rm8vREv8AN903vYf8KPzf/rfyKLcLsbC44WgucdA0XJ8Ao8KuX6hSJbIYXYsJluGPfzgy3NaTY2N8zYeKgFTZgI2mO4MjrcpbMNa03EQI1OIAm2mEDeoRUw1u7049+/HkMFpWz4cEUbPqsaD3gC/3rPKGHHIxm97R4XF/uutLK7IyL5LquMX1c792lrpuU4QHOyadCevqSHRkzCXGd+C2V+++l89OxK2lKHNbchrWhrcxcGxJOm8krnFztWvPp0Xzqul6stRrQTJK1upt1JJqW3AzuQCBY9agMiaGnE6wxu0BOlhnuNwlu5O4NzdrQOjYZZ53C6mSWKttic8rd+eiRJWtHUdAfeCfgo+KPCSQ43w3z7CRb3EIxxj9W/VmeoGw+4ICbTT4wSBa3yupTEzHGG6CyeYgLbZHTb3hbSsW2T0h3raVJCIIQhYNAhCEBk/G6Pzln/5x+ORZTXBazxsj85Z9gPxyLKNoaraDKKXVJi6Q70qbVNxdId6yUtkxWPnADmmUMvhxNLw3F9XEMr5jLtT6sqeT0GHE8WkjJYQOTcDMy0gN7hwOIEWzDhnlZGk1TVkPOOrahpzlmB1sXvHjYlc/K839c7xdfzXsp6r0gP0xwcxtY0zN5QmHIOEYuA44WuDeblnlcKa2VzTKRI2LHLG++EnlGu5KJ0WTTbE6J4zy3kLHcYf9q9EXNLxfqeBO1ZeuQeLWHzaky18rhhMjsPWG81p72tsCvYGsfE2URlgZhdVsGBhAMjayVhGIHTDHl+wF5PbTAKiYAAASyAAZADGcgOoK91C7yr0QzPxISSUopJWzJbcFYcVS39kOf92H/EvdleT4Ew86V+4NYPEknyC9YVUQEzVQB7cJNk8hUEUUQtYknMnxItdc+gjec8ndot2eCloQEcUbLWzt3nqB+ZShSs+qE8hAdTjE2nGIC12V0gtqWK7L6QW1KTCBCELBoEIQgMv42G+miO+K3uc75rJdo6lbxxlbKMsLZWi5jJB9l1s/Age9YTtQWJ7Mj2d62mGUU7VGi6Q71MmzUMZHxWQi3VjSz1DKdz4p3Max7nYMLXNxcmOccQOoJ7rX1zVcp8G0IRA+nkPJl4e7lTic0GzQ1hYxpP1ji6tOtUE+noJKcVLnTwuja5hJkpmTGR87GhzQHG7BdzWmxsbA2SKOKoxuYZqd8vKfRmMljeR6+eRs7HNybzmzOF+q3Yn3bfp3slEUzGSObrKw4XDlWuLRiYRiwh1jbW2YUL8p05fyrprANY7mAF+KNtZGAGkgOJLo3ajJ4QEeAzXgvJTOY6E48Yma1rGQvkdHMWtxE8nVHNl9G5iyravZc8kjnuMd3zQtxAkML6xrpWYbi+EAG/WMtVeSVkRnY2FsBwtqIxif6OYmjiax0mN+EXLcORA5u+9+vqY8FNzmYhUU5kaHDLA+18joGm1+xAUNfsR0UXKF8T+cHAseTiiNmiVjS0XbjdhJNjcadaqF6XakzZaYSxsEcIiFMGYw8sc2oY8Mz5xJaC+9l5ooQ9pwPhwwYvrPc7wFm/Aq8KibHhwQRNOoY2/eRc/eSpZWiAhCEAKNXl4YSw21JO4AE5e63ipKbnZia5u8Ee8ICsdM+8bjjLcEZNjYYievf3JukqcBxG7iWknPU43Z59gU00BOEF5wgNBFsjhN7jckv2WLENcb6C+gFySBbvQFg05J1ibaOpOsQFrslt3AbyB7ytpWX8B9mGWYOI9Gwh5PaDcN9481qCkmVIEIQsFBCEIBD2Aggi4ORB0IPUV4baXApkcj5YYw+J/SZkXsP1oydR2a6ar3iFqMnF2iNWYntbga14cY2xvO4sDHjsJFiD32Xja7gfI3+jc3uN/O6+laqijk6bAT1HRw7nDMKtqeDsbhYONtzgHj4E+JXbPhy+JUZqSPmGt2NURah1u3JV0kb/1r+K+j9qcXsUoIwtt+w5zD4N0XkK/igd/ROf8Av4XfhN1hwX9LXrX7lT8UYyWHckkLRqvir2gzotxDsv5EKjquBO0mawPt2f6KPDkuBaPKELquJuDlY3pU8g7bKG7Ys/XG73FZaa3KQbJyGLG5rPrODf4jb4p87Kn+qR3g/JWPB7ZcpqGFw5rbvPgMureQiB7W25cwp1sLjoE6KWQfqu9y0Z3I3JnclckdykCnf9V3knY6KY9GF7u4OPktaFIYhKWyjedAriDYte7owSD9wN81Mi4GV7+k2w/aePIKWiUedNIB0ngdmpTBG7Ne8pOLqT+klYPZBPmrqi4C0zOm5zj4NHxP3rNotGXQ0r3aBeu4P8CpZLOlGBm9w5x7m/NaDRbKgh9XG1p32u7+I5qcpmLRFoKGOFgjjFmj3k7yesqUhCyUEIQgBCEIAQhCAEIQgBCEIAQhCASWg9Sako43dKNh72g+YQhAMHZFMdaeL+zb8lxuxqUaU8I7o2fJdQlgV+Sqf+oi/gb8kttDCNImDua35LiEA+2MDQAdwS0IQAhCEAIQhACEIQAhCEAIQhAf/9k=', 'Beta Alanina 150g', '\$65.90'),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.search, color: Colors.black),

                        ),
                      ),
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child:  Icon(Icons.shopping_basket, color: Colors.black),
                        ),
                      ),
                      Container(
                        height: 65.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style:  BorderStyle.solid,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF1C1428)
                        ),
                        child: Center
                        (
                          child: Text('Checkout',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 15.0
                          ),)
                           ),
                      )
                    ],
                  )
                ],
              ),
             )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price){
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: (){
          
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MyPage(heroTag: imgPath, foodName: foodName, foodPrice: price)
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: Image(
                      /* pelo CHROME : image: AssetImage(imgPath),*/
                      image: NetworkImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0
                    )
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color:Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}