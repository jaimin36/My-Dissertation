clc
clear all

%this code is written in Octave 6.4.0

pkg load statistics
pkg load image %to load
pkg load communications %to load wgn 
pkg load io %to load xlswrite

%parameters for polynomial fitting
n=30;
Deg=15;
nbins=60;

%denoising the ith row of all images by creating matrix M,
%with rows of M are the ith rows of every image, for 64 images M is 64x200
%repeating this for every row

%noise strength ~ seed value
%50~2000
%100~8000
%200~32000

%noise strength (standard deviaiton of noise matrix) is 50 for all images
%reading images
I1=imread('einstein_noise.jpg');
I1=double(I1);

I2=imread('lenna_noise.jpg');
I2=double(I2);

I3=imread('panda_noise.jpg');
I3=double(I3);

I4=imread('Parrot_noise.jpg');
I4=double(I4);

I5=imread('plane_noise.jpg');
I5=double(I5);

I6=imread('tree_noise.jpg');
I6=double(I6);

I7=imread('baboon_noise.jpg');
I7=double(I7);

I8=imread('cameraman_noise.jpg');
I8=double(I8);

I9=imread('1_noise.jpg');
I9=double(I9);

I10=imread('girl_noise.jpg');
I10=double(I10);

I11=imread('2_noise.jpg');
I11=double(I11);

I12=imread('bridge_noise.jpg');
I12=double(I12);

I13=imread('boy_noise.jpg');
I13=double(I13);

I14=imread('3_noise.jpg');
I14=double(I14);

I15=imread('cat_noise.jpg');
I15=double(I15);

I16=imread('4_noise.jpg');
I16=double(I16);

I17=imread('5_noise.jpg');
I17=double(I17);

I18=imread('6_noise.jpg');
I18=double(I18);

I19=imread('7_noise.jpg');
I19=double(I19);

I20=imread('8_noise.jpg');
I20=double(I20);

I21=imread('9_noise.jpg');
I21=double(I21);

I22=imread('10_noise.jpg');
I22=double(I22);

I23=imread('11_noise.jpg');
I23=double(I23);

I24=imread('12_noise.jpg');
I24=double(I24);

I25=imread('13_noise.jpg');
I25=double(I25);

I26=imread('14_noise.jpg');
I26=double(I26);

I27=imread('15_noise.jpg');
I27=double(I27);

I28=imread('16_noise.jpg');
I28=double(I28);

I29=imread('17_noise.jpg');
I29=double(I29);

I30=imread('18_noise.jpg');
I30=double(I30);

I31=imread('19_noise.jpg');
I31=double(I31);

I32=imread('20_noise.jpg');
I32=double(I32);

I33=imread('21_noise.jpg');
I33=double(I33);

I34=imread('22_noise.jpg');
I34=double(I34);

I35=imread('23_noise.jpg');
I35=double(I35);

I36=imread('24_noise.jpg');
I36=double(I36);

I37=imread('25_noise.jpg');
I37=double(I37);

I38=imread('26_noise.jpg');
I38=double(I38);

I39=imread('27_noise.jpg');
I39=double(I39);

I40=imread('28_noise.jpg');
I40=double(I40);

I41=imread('29_noise.jpg');
I41=double(I41);

I42=imread('30_noise.jpg');
I42=double(I42);

I43=imread('31_noise.jpg');
I43=double(I43);

I44=imread('32_noise.jpg');
I44=double(I44);

I45=imread('33_noise.jpg');
I45=double(I45);

I46=imread('34_noise.jpg');
I46=double(I46);

I47=imread('35_noise.jpg');
I47=double(I47);

I48=imread('36_noise.jpg');
I48=double(I48);

I49=imread('37_noise.jpg');
I49=double(I49);

I50=imread('38_noise.jpg');
I50=double(I50);

I51=imread('39_noise.jpg');
I51=double(I51);

I52=imread('40_noise.jpg');
I52=double(I52);

I53=imread('41_noise.jpg');
I53=double(I53);

I54=imread('42_noise.jpg');
I54=double(I54);

I55=imread('43_noise.jpg');
I55=double(I55);

I56=imread('44_noise.jpg');
I56=double(I56);

I57=imread('45_noise.jpg');
I57=double(I57);

I58=imread('46_noise.jpg');
I58=double(I58);

I59=imread('47_noise.jpg');
I59=double(I59);

I60=imread('48_noise.jpg');
I60=double(I60);

I61=imread('49_noise.jpg');
I61=double(I61);

I62=imread('50_noise.jpg');
I62=double(I62);

I63=imread('51_noise.jpg');
I63=double(I63);

I64=imread('52_noise.jpg');
I64=double(I64);

I65=imread('65.jpg');
I65=double(I65)+wgn(200,200,1,2000);

I66=imread('66.jpg');
I66=double(I66)+wgn(200,200,1,2000);

I67=imread('67.jpg');
I67=double(I67)+wgn(200,200,1,2000);

I68=imread('68.jpg');
I68=double(I68)+wgn(200,200,1,2000);

I69=imread('69.jpg');
I69=double(I69)+wgn(200,200,1,2000);

I70=imread('70.jpg');
I70=double(I70)+wgn(200,200,1,2000);

I71=imread('71.jpg');
I71=double(I71)+wgn(200,200,1,2000);

I72=imread('72.jpg');
I72=double(I72)+wgn(200,200,1,2000);

I73=imread('73.jpg');
I73=double(I73)+wgn(200,200,1,2000);

I74=imread('74.jpg');
I74=double(I74)+wgn(200,200,1,2000);

I75=imread('75.jpg');
I75=double(I75)+wgn(200,200,1,2000);

I76=imread('76.jpg');
I76=double(I76)+wgn(200,200,1,2000);

I77=imread('77.jpg');
I77=double(I77)+wgn(200,200,1,2000);

I78=imread('78.jpg');
I78=double(I78)+wgn(200,200,1,2000);

I79=imread('79.jpg');
I79=double(I79)+wgn(200,200,1,2000);

I80=imread('80.jpg');
I80=double(I80)+wgn(200,200,1,2000);

I81=imread('81.jpg');
I81=double(I81)+wgn(200,200,1,2000);

I82=imread('82.jpg');
I82=double(I82)+wgn(200,200,1,2000);

I83=imread('83.jpg');
I83=double(I83)+wgn(200,200,1,2000);

I84=imread('84.jpg');
I84=double(I84)+wgn(200,200,1,2000);

I85=imread('85.jpg');
I85=double(I85)+wgn(200,200,1,2000);

I86=imread('86.jpg');
I86=double(I86)+wgn(200,200,1,2000);

I87=imread('87.jpg');
I87=double(I87)+wgn(200,200,1,2000);

I88=imread('88.jpg');
I88=double(I88)+wgn(200,200,1,2000);

I89=imread('89.jpg');
I89=double(I89)+wgn(200,200,1,2000);

I90=imread('90.jpg');
I90=double(I90)+wgn(200,200,1,2000);

I91=imread('91.jpg');
I91=double(I91)+wgn(200,200,1,2000);

I92=imread('92.jpg');
I92=double(I92)+wgn(200,200,1,2000);

I93=imread('93.jpg');
I93=double(I93)+wgn(200,200,1,2000);

I94=imread('94.jpg');
I94=double(I94)+wgn(200,200,1,2000);

I95=imread('95.jpg');
I95=double(I95)+wgn(200,200,1,2000);

I96=imread('96.jpg');
I96=double(I96)+wgn(200,200,1,2000);

I97=imread('97.jpg');
I97=double(I97)+wgn(200,200,1,2000);

I98=imread('98.jpg');
I98=double(I98)+wgn(200,200,1,2000);

I99=imread('99.jpg');
I99=double(I99)+wgn(200,200,1,2000);

I100=imread('100.jpg');
I100=double(I100)+wgn(200,200,1,2000);

I101=imread('101.jpg');
I101=double(I101)+wgn(200,200,1,2000);

I102=imread('102.jpg');
I102=double(I102)+wgn(200,200,1,2000);

I103=imread('103.jpg');
I103=double(I103)+wgn(200,200,1,2000);

I104=imread('104.jpg');
I104=double(I104)+wgn(200,200,1,2000);

I105=imread('105.jpg');
I105=double(I105)+wgn(200,200,1,2000);

I106=imread('106.jpg');
I106=double(I106)+wgn(200,200,1,2000);

I107=imread('107.jpg');
I107=double(I107)+wgn(200,200,1,2000);

I108=imread('108.jpg');
I108=double(I108)+wgn(200,200,1,2000);

I109=imread('109.jpg');
I109=double(I109)+wgn(200,200,1,2000);

I110=imread('110.jpg');
I110=double(I110)+wgn(200,200,1,2000);

I111=imread('111.jpg');
I111=double(I111)+wgn(200,200,1,2000);

I112=imread('112.jpg');
I112=double(I112)+wgn(200,200,1,2000);

I113=imread('113.jpg');
I113=double(I113)+wgn(200,200,1,2000);

I114=imread('114.jpg');
I114=double(I114)+wgn(200,200,1,2000);


I115=imread('115.jpg');
I115=double(I115)+wgn(200,200,1,2000);

I116=imread('116.jpg');
I116=double(I116)+wgn(200,200,1,2000);

I117=imread('117.jpg');
I117=double(I117)+wgn(200,200,1,2000);

I118=imread('118.jpg');
I118=double(I118)+wgn(200,200,1,2000);

I119=imread('119.jpg');
I119=double(I119)+wgn(200,200,1,2000);

I120=imread('120.jpg');
I120=double(I120)+wgn(200,200,1,2000);

I121=imread('121.jpg');
I121=double(I121)+wgn(200,200,1,2000);

I122=imread('122.jpg');
I122=double(I122)+wgn(200,200,1,2000);

I123=imread('123.jpg');
I123=double(I123)+wgn(200,200,1,2000);

I124=imread('124.jpg');
I124=double(I124)+wgn(200,200,1,2000);

I125=imread('125.jpg');
I125=double(I125)+wgn(200,200,1,2000);

I126=imread('126.jpg');
I126=double(I126)+wgn(200,200,1,2000);

I127=imread('127.jpg');
I127=double(I127)+wgn(200,200,1,2000);

I128=imread('128.jpg');
I128=double(I128)+wgn(200,200,1,2000);


%creating matrix to store denoised images
I1_denoised=zeros(200,200);
I2_denoised=zeros(200,200);
I3_denoised=zeros(200,200);
I4_denoised=zeros(200,200);
I5_denoised=zeros(200,200);
I6_denoised=zeros(200,200);
I7_denoised=zeros(200,200);
I8_denoised=zeros(200,200);
I9_denoised=zeros(200,200);
I10_denoised=zeros(200,200);
I11_denoised=zeros(200,200);
I12_denoised=zeros(200,200);
I13_denoised=zeros(200,200);
I14_denoised=zeros(200,200);
I15_denoised=zeros(200,200);
I16_denoised=zeros(200,200);
I17_denoised=zeros(200,200);
I18_denoised=zeros(200,200);
I19_denoised=zeros(200,200);
I20_denoised=zeros(200,200);
I21_denoised=zeros(200,200);
I22_denoised=zeros(200,200);
I23_denoised=zeros(200,200);
I24_denoised=zeros(200,200);
I25_denoised=zeros(200,200);
I26_denoised=zeros(200,200);
I27_denoised=zeros(200,200);
I28_denoised=zeros(200,200);
I29_denoised=zeros(200,200);
I30_denoised=zeros(200,200);

I31_denoised=zeros(200,200);
I32_denoised=zeros(200,200);
I33_denoised=zeros(200,200);
I34_denoised=zeros(200,200);
I35_denoised=zeros(200,200);
I36_denoised=zeros(200,200);
I37_denoised=zeros(200,200);
I38_denoised=zeros(200,200);
I39_denoised=zeros(200,200);
I40_denoised=zeros(200,200);
I41_denoised=zeros(200,200);
I42_denoised=zeros(200,200);
I43_denoised=zeros(200,200);
I44_denoised=zeros(200,200);
I45_denoised=zeros(200,200);
I46_denoised=zeros(200,200);
I47_denoised=zeros(200,200);
I48_denoised=zeros(200,200);
I49_denoised=zeros(200,200);
I50_denoised=zeros(200,200);

I51_denoised=zeros(200,200);
I52_denoised=zeros(200,200);
I53_denoised=zeros(200,200);
I54_denoised=zeros(200,200);
I55_denoised=zeros(200,200);
I56_denoised=zeros(200,200);
I57_denoised=zeros(200,200);
I58_denoised=zeros(200,200);
I59_denoised=zeros(200,200);
I60_denoised=zeros(200,200);
I61_denoised=zeros(200,200);
I62_denoised=zeros(200,200);
I63_denoised=zeros(200,200);
I64_denoised=zeros(200,200);

I65_denoised=zeros(200,200);
I66_denoised=zeros(200,200);
I67_denoised=zeros(200,200);
I68_denoised=zeros(200,200);
I69_denoised=zeros(200,200);
I70_denoised=zeros(200,200);
I71_denoised=zeros(200,200);
I72_denoised=zeros(200,200);
I73_denoised=zeros(200,200);
I74_denoised=zeros(200,200);
I75_denoised=zeros(200,200);
I76_denoised=zeros(200,200);
I77_denoised=zeros(200,200);
I78_denoised=zeros(200,200);
I79_denoised=zeros(200,200);
I80_denoised=zeros(200,200);
I81_denoised=zeros(200,200);
I82_denoised=zeros(200,200);
I83_denoised=zeros(200,200);
I84_denoised=zeros(200,200);
I85_denoised=zeros(200,200);
I86_denoised=zeros(200,200);
I87_denoised=zeros(200,200);
I88_denoised=zeros(200,200);
I89_denoised=zeros(200,200);
I90_denoised=zeros(200,200);
I91_denoised=zeros(200,200);
I92_denoised=zeros(200,200);
I93_denoised=zeros(200,200);
I94_denoised=zeros(200,200);

I95_denoised=zeros(200,200);
I96_denoised=zeros(200,200);
I97_denoised=zeros(200,200);
I98_denoised=zeros(200,200);
I99_denoised=zeros(200,200);
I100_denoised=zeros(200,200);
I101_denoised=zeros(200,200);
I102_denoised=zeros(200,200);
I103_denoised=zeros(200,200);
I104_denoised=zeros(200,200);
I105_denoised=zeros(200,200);
I106_denoised=zeros(200,200);
I107_denoised=zeros(200,200);
I108_denoised=zeros(200,200);
I109_denoised=zeros(200,200);
I110_denoised=zeros(200,200);
I111_denoised=zeros(200,200);
I112_denoised=zeros(200,200);
I113_denoised=zeros(200,200);
I114_denoised=zeros(200,200);

I115_denoised=zeros(200,200);
I116_denoised=zeros(200,200);
I117_denoised=zeros(200,200);
I118_denoised=zeros(200,200);
I119_denoised=zeros(200,200);
I120_denoised=zeros(200,200);
I121_denoised=zeros(200,200);
I122_denoised=zeros(200,200);
I123_denoised=zeros(200,200);
I124_denoised=zeros(200,200);
I125_denoised=zeros(200,200);
I126_denoised=zeros(200,200);
I127_denoised=zeros(200,200);
I128_denoised=zeros(200,200);

every_eigenvalues=zeros(200,128);
unfolded_eigenvalues=zeros(200,128);

EES=zeros(200,128);

size11=zeros(1,200); %eigenvalues greater than lambda max
size21=zeros(1,200); %eigenvalues less than lambda min

l_max1=zeros(1,200);
l_min1=zeros(1,200);
%for wigner surmise
ws=[];

for i=1:200
  M=zeros(128,200);
  
  %setting entries of M
  M(1,:)=I1(i,:);
  M(2,:)=I2(i,:);
  M(3,:)=I3(i,:);
  M(4,:)=I4(i,:);
  M(5,:)=I5(i,:);
  M(6,:)=I6(i,:);
  M(7,:)=I7(i,:);
  M(8,:)=I8(i,:);
  M(9,:)=I9(i,:);
  M(10,:)=I10(i,:);
  M(11,:)=I11(i,:);
  M(12,:)=I12(i,:);
  M(13,:)=I13(i,:);
  M(14,:)=I14(i,:);
  M(15,:)=I15(i,:);
  M(16,:)=I16(i,:);
  M(17,:)=I17(i,:);
  M(18,:)=I18(i,:);
  M(19,:)=I19(i,:);
  M(20,:)=I20(i,:);
  M(21,:)=I21(i,:);
  M(22,:)=I22(i,:);
  M(23,:)=I23(i,:);
  M(24,:)=I24(i,:);
  M(25,:)=I25(i,:);
  M(26,:)=I26(i,:);
  M(27,:)=I27(i,:);
  M(28,:)=I28(i,:);
  M(29,:)=I29(i,:);
  M(30,:)=I30(i,:);
  
  M(31,:)=I31(i,:);
  M(32,:)=I32(i,:);
  M(33,:)=I33(i,:);
  M(34,:)=I34(i,:);
  M(35,:)=I35(i,:);
  M(36,:)=I36(i,:);
  M(37,:)=I37(i,:);
  M(38,:)=I38(i,:);
  M(39,:)=I39(i,:);
  M(40,:)=I40(i,:);
  M(41,:)=I41(i,:);
  M(42,:)=I42(i,:);
  M(43,:)=I43(i,:);
  M(44,:)=I44(i,:);
  M(45,:)=I45(i,:);
  M(46,:)=I46(i,:);
  M(47,:)=I47(i,:);
  M(48,:)=I48(i,:);
  M(49,:)=I49(i,:);
  M(50,:)=I50(i,:);
  
  M(51,:)=I51(i,:);
  M(52,:)=I52(i,:);
  M(53,:)=I53(i,:);
  M(54,:)=I54(i,:);
  M(55,:)=I55(i,:);
  M(56,:)=I56(i,:);
  M(57,:)=I57(i,:);
  M(58,:)=I58(i,:);
  M(59,:)=I59(i,:);
  M(60,:)=I60(i,:);
  M(61,:)=I61(i,:);
  M(62,:)=I62(i,:);
  M(63,:)=I63(i,:);
  M(64,:)=I64(i,:);
  
  M(65,:)=I65(i,:);
  M(66,:)=I66(i,:);
  M(67,:)=I67(i,:);
  M(68,:)=I68(i,:);
  M(69,:)=I69(i,:);
  M(70,:)=I70(i,:);
  M(71,:)=I71(i,:);
  M(72,:)=I72(i,:);
  M(73,:)=I73(i,:);
  M(74,:)=I74(i,:);
  M(75,:)=I75(i,:);
  M(76,:)=I76(i,:);
  M(77,:)=I77(i,:);
  M(78,:)=I78(i,:);
  M(79,:)=I79(i,:);
  M(80,:)=I80(i,:);
  M(81,:)=I81(i,:);
  M(82,:)=I82(i,:);
  M(83,:)=I83(i,:);
  M(84,:)=I84(i,:);
  M(85,:)=I85(i,:);
  M(86,:)=I86(i,:);
  M(87,:)=I87(i,:);
  M(88,:)=I88(i,:);
  M(89,:)=I89(i,:);
  M(90,:)=I90(i,:);
  M(91,:)=I91(i,:);
  M(92,:)=I92(i,:);
  M(93,:)=I93(i,:);
  M(94,:)=I94(i,:);
  
  M(95,:)=I95(i,:);
  M(96,:)=I96(i,:);
  M(97,:)=I97(i,:);
  M(98,:)=I98(i,:);
  M(99,:)=I99(i,:);
  M(100,:)=I100(i,:);
  M(101,:)=I101(i,:);
  M(102,:)=I102(i,:);
  M(103,:)=I103(i,:);
  M(104,:)=I104(i,:);
  M(105,:)=I105(i,:);
  M(106,:)=I106(i,:);
  M(107,:)=I107(i,:);
  M(108,:)=I108(i,:);
  M(109,:)=I109(i,:);
  M(110,:)=I110(i,:);
  M(111,:)=I111(i,:);
  M(112,:)=I112(i,:);
  M(113,:)=I113(i,:);
  M(114,:)=I114(i,:);
  
  M(115,:)=I115(i,:);
  M(116,:)=I116(i,:);
  M(117,:)=I117(i,:);
  M(118,:)=I118(i,:);
  M(119,:)=I119(i,:);
  M(120,:)=I120(i,:);
  M(121,:)=I121(i,:);
  M(122,:)=I122(i,:);
  M(123,:)=I123(i,:);
  M(124,:)=I124(i,:);
  M(125,:)=I125(i,:);
  M(126,:)=I126(i,:);
  M(127,:)=I127(i,:);
  M(128,:)=I128(i,:);
  
  %normalizing M
  %by subtracting mean and dividing by std of every rows
  temp=M';
  st=std(temp);
  mean1=mean(temp);
  temp=(temp-mean1)./st;
  M=temp';
  
  %calculating lambda max and min
  [N T]=size(M);
  Q=T/N;
  sigma2=std2(M)^2;
  sigma21(i)=sigma2;
  
  l_max=sigma2*(1+(1/Q)+(2*sqrt(1/Q)));
  l_min=sigma2*(1+(1/Q)-(2*sqrt(1/Q)));
  
  l_max1(i)=l_max;
  l_min1(i)=l_min;
  
  %making correlation matrix C
  C=M*M'/(T);
  
  [eigenvectors eigenvales]=eig(C);
  E=sum(eigenvales); %eigenvalues as vector
  
  EES(i,:)=E;
  
  every_eigenvalues(i,:)=E;
    
  %reconstructing matrix M
  size1=size(find(E>l_max),2);
  size2=size(find(E<l_min),2);
  size3=size(find(E<l_max & E>l_min),2);
  
  %xlswrite('Correlation Matrix_64x64_Noise',C,i,'B2:BM66');
  %xlswrite('Eigenvectors_Noise_2000',eigenvectors,i,'B2:ZZZ500');
  
  size11(i)=size1;
  size21(i)=size2;
  size31(i)=size3;
  
  %size1=length(find(E>l_max));
  %size2=length(find(E<l_min));
  
  if size2==0
    [Vec lambda1]=eigs(C,size1);
    %Vec=Vec1;
  endif
  
  if size2>=1
    [Vec1 lambda1]=eigs(C,size1);
    [Vec2 lambda2]=eigs(C,size2,'sm');
    Vec=[Vec1 Vec2];
  endif
  
  %reconstructing Matrix M
  M1=Vec*Vec'*M;
  
  %reconstructing Matrix M
  Vec=[Vec1 Vec2];
  M1=Vec*Vec'*M;
  
  %adding mean and std to matrix M
  M1=M1';
  M1=mean1+(M1.*st);
  M1=M1';
  
  %reconstructing row of each image by denoising 
  I1_denoised(i,:)=M1(1,:);
  I2_denoised(i,:)=M1(2,:);
  I3_denoised(i,:)=M1(3,:);
  I4_denoised(i,:)=M1(4,:);
  I5_denoised(i,:)=M1(5,:);
  I6_denoised(i,:)=M1(6,:);
  I7_denoised(i,:)=M1(7,:);
  I8_denoised(i,:)=M1(8,:);
  I9_denoised(i,:)=M1(9,:);
  I10_denoised(i,:)=M1(10,:);
  I11_denoised(i,:)=M1(11,:);
  I12_denoised(i,:)=M1(12,:);
  I13_denoised(i,:)=M1(13,:);
  I14_denoised(i,:)=M1(14,:);
  I15_denoised(i,:)=M1(15,:);
  I16_denoised(i,:)=M1(16,:);
  I17_denoised(i,:)=M1(17,:);
  I18_denoised(i,:)=M1(18,:);
  I19_denoised(i,:)=M1(19,:);
  I20_denoised(i,:)=M1(20,:);
  I21_denoised(i,:)=M1(21,:);
  I22_denoised(i,:)=M1(22,:);
  I23_denoised(i,:)=M1(23,:);
  I24_denoised(i,:)=M1(24,:);
  I25_denoised(i,:)=M1(25,:);
  I26_denoised(i,:)=M1(26,:);
  I27_denoised(i,:)=M1(27,:);
  I28_denoised(i,:)=M1(28,:);
  I29_denoised(i,:)=M1(29,:);
  I30_denoised(i,:)=M1(30,:);
  
  I31_denoised(i,:)=M1(31,:);
  I32_denoised(i,:)=M1(32,:);
  I33_denoised(i,:)=M1(33,:);
  I34_denoised(i,:)=M1(34,:);
  I35_denoised(i,:)=M1(35,:);
  I36_denoised(i,:)=M1(36,:);
  I37_denoised(i,:)=M1(37,:);
  I38_denoised(i,:)=M1(38,:);
  I39_denoised(i,:)=M1(39,:);
  I40_denoised(i,:)=M1(40,:);
  I41_denoised(i,:)=M1(41,:);
  I42_denoised(i,:)=M1(42,:);
  I43_denoised(i,:)=M1(43,:);
  I44_denoised(i,:)=M1(44,:);
  I45_denoised(i,:)=M1(45,:);
  I46_denoised(i,:)=M1(46,:);
  I47_denoised(i,:)=M1(47,:);
  I48_denoised(i,:)=M1(48,:);
  I49_denoised(i,:)=M1(49,:);
  I50_denoised(i,:)=M1(50,:);
  
  I51_denoised(i,:)=M1(51,:);
  I52_denoised(i,:)=M1(52,:);
  I53_denoised(i,:)=M1(53,:);
  I54_denoised(i,:)=M1(54,:);
  I55_denoised(i,:)=M1(55,:);
  I56_denoised(i,:)=M1(56,:);
  I57_denoised(i,:)=M1(57,:);
  I58_denoised(i,:)=M1(58,:);
  I59_denoised(i,:)=M1(59,:);
  I60_denoised(i,:)=M1(60,:);
  I61_denoised(i,:)=M1(61,:);
  I62_denoised(i,:)=M1(62,:);
  I63_denoised(i,:)=M1(63,:);
  I64_denoised(i,:)=M1(64,:);
  
  I65_denoised(i,:)=M1(65,:);
  I66_denoised(i,:)=M1(66,:);
  I67_denoised(i,:)=M1(67,:);
  I68_denoised(i,:)=M1(68,:);
  I69_denoised(i,:)=M1(69,:);
  I70_denoised(i,:)=M1(70,:);
  I71_denoised(i,:)=M1(71,:);
  I72_denoised(i,:)=M1(72,:);
  I73_denoised(i,:)=M1(73,:);
  I74_denoised(i,:)=M1(74,:);
  I75_denoised(i,:)=M1(75,:);
  I76_denoised(i,:)=M1(76,:);
  I77_denoised(i,:)=M1(77,:);
  I78_denoised(i,:)=M1(78,:);
  I79_denoised(i,:)=M1(79,:);
  I80_denoised(i,:)=M1(80,:);
  I81_denoised(i,:)=M1(81,:);
  I82_denoised(i,:)=M1(82,:);
  I83_denoised(i,:)=M1(83,:);
  I84_denoised(i,:)=M1(84,:);
  I85_denoised(i,:)=M1(85,:);
  I86_denoised(i,:)=M1(86,:);
  I87_denoised(i,:)=M1(87,:);
  I88_denoised(i,:)=M1(88,:);
  I89_denoised(i,:)=M1(89,:);
  I90_denoised(i,:)=M1(90,:);
  I91_denoised(i,:)=M1(91,:);
  I92_denoised(i,:)=M1(92,:);
  I93_denoised(i,:)=M1(93,:);
  I94_denoised(i,:)=M1(94,:);
  
  I95_denoised(i,:)=M1(95,:);
  I96_denoised(i,:)=M1(96,:);
  I97_denoised(i,:)=M1(97,:);
  I98_denoised(i,:)=M1(98,:);
  I99_denoised(i,:)=M1(99,:);
  I100_denoised(i,:)=M1(100,:);
  I101_denoised(i,:)=M1(101,:);
  I102_denoised(i,:)=M1(102,:);
  I103_denoised(i,:)=M1(103,:);
  I104_denoised(i,:)=M1(104,:);
  I105_denoised(i,:)=M1(105,:);
  I106_denoised(i,:)=M1(106,:);
  I107_denoised(i,:)=M1(107,:);
  I108_denoised(i,:)=M1(108,:);
  I109_denoised(i,:)=M1(109,:);
  I110_denoised(i,:)=M1(110,:);
  I111_denoised(i,:)=M1(111,:);
  I112_denoised(i,:)=M1(112,:);
  I113_denoised(i,:)=M1(113,:);
  I114_denoised(i,:)=M1(114,:);
  
  I115_denoised(i,:)=M1(115,:);
  I116_denoised(i,:)=M1(116,:);
  I117_denoised(i,:)=M1(117,:);
  I118_denoised(i,:)=M1(118,:);
  I119_denoised(i,:)=M1(119,:);
  I120_denoised(i,:)=M1(120,:);
  I121_denoised(i,:)=M1(121,:);
  I122_denoised(i,:)=M1(122,:);
  I123_denoised(i,:)=M1(123,:);
  I124_denoised(i,:)=M1(124,:);
  I125_denoised(i,:)=M1(125,:);
  I126_denoised(i,:)=M1(126,:);
  I127_denoised(i,:)=M1(127,:);
  I128_denoised(i,:)=M1(128,:);
endfor


#getting grayscale image
a=mat2gray(I1_denoised);
b=mat2gray(I2_denoised);
c=mat2gray(I3_denoised);
d=mat2gray(I4_denoised);
e=mat2gray(I5_denoised);
f=mat2gray(I6_denoised);
g=mat2gray(I7_denoised);
h=mat2gray(I8_denoised);
i=mat2gray(I9_denoised);
j=mat2gray(I10_denoised);
k=mat2gray(I11_denoised);
l=mat2gray(I12_denoised);
m=mat2gray(I13_denoised);
np=mat2gray(I14_denoised);
o=mat2gray(I15_denoised);
a1=mat2gray(I16_denoised);
b1=mat2gray(I17_denoised);
c1=mat2gray(I18_denoised);
d1=mat2gray(I19_denoised);
e1=mat2gray(I20_denoised);
f1=mat2gray(I21_denoised);
g1=mat2gray(I22_denoised);
h1=mat2gray(I23_denoised);
i1=mat2gray(I24_denoised);
j1=mat2gray(I25_denoised);
k1=mat2gray(I26_denoised);
l1=mat2gray(I27_denoised);
m1=mat2gray(I28_denoised);
n1=mat2gray(I29_denoised);
o1=mat2gray(I30_denoised);

k11=mat2gray(I31_denoised);
l11=mat2gray(I32_denoised);
m11=mat2gray(I33_denoised);
n11=mat2gray(I34_denoised);
o11=mat2gray(I35_denoised);
a111=mat2gray(I36_denoised);
b111=mat2gray(I37_denoised);
c111=mat2gray(I38_denoised);
d111=mat2gray(I39_denoised);
e111=mat2gray(I40_denoised);
f111=mat2gray(I41_denoised);
g111=mat2gray(I42_denoised);
h111=mat2gray(I43_denoised);
i111=mat2gray(I44_denoised);
j111=mat2gray(I45_denoised);
k111=mat2gray(I46_denoised);
l111=mat2gray(I47_denoised);
m111=mat2gray(I48_denoised);
n111=mat2gray(I49_denoised);
o111=mat2gray(I50_denoised);

p=mat2gray(I51_denoised);
q=mat2gray(I52_denoised);
r=mat2gray(I53_denoised);
s=mat2gray(I54_denoised);
t=mat2gray(I55_denoised);
u=mat2gray(I56_denoised);
v=mat2gray(I57_denoised);
w=mat2gray(I58_denoised);
x=mat2gray(I59_denoised);
y=mat2gray(I60_denoised);
z=mat2gray(I61_denoised);
p1=mat2gray(I62_denoised);
q1=mat2gray(I63_denoised);
r1=mat2gray(I64_denoised);

#{
figure(1)
subplot(2,3,1)
imshow(a)
subplot(2,3,2)
imshow(b)
subplot(2,3,3)
imshow(c)
subplot(2,3,4)
imshow(d)
subplot(2,3,5)
imshow(e)
subplot(2,3,6)
imshow(f)

figure(2)
subplot(2,3,1)
imshow(g)
subplot(2,3,2)
imshow(h)
subplot(2,3,3)
imshow(i)
subplot(2,3,4)
imshow(j)
subplot(2,3,5)
imshow(k)
subplot(2,3,6)
imshow(l)

figure(3)
subplot(2,3,1)
imshow(m)
subplot(2,3,2)
imshow(n)
subplot(2,3,3)
imshow(o)
subplot(2,3,4)
imshow(a1)
subplot(2,3,5)
imshow(b1)
subplot(2,3,6)
imshow(c1)

figure(4)
subplot(2,3,1)
imshow(d1)
subplot(2,3,2)
imshow(e1)
subplot(2,3,3)
imshow(f1)
subplot(2,3,4)
imshow(g1)
subplot(2,3,5)
imshow(h1)
subplot(2,3,6)
imshow(i1)

figure(5)
subplot(2,3,1)
imshow(j1)
subplot(2,3,2)
imshow(k1)
subplot(2,3,3)
imshow(l1)
subplot(2,3,4)
imshow(m1)
subplot(2,3,5)
imshow(n1)
subplot(2,3,6)
imshow(o1)

figure(6)
subplot(2,3,1)
imshow(k11)
subplot(2,3,2)
imshow(l11)
subplot(2,3,3)
imshow(m11)
subplot(2,3,4)
imshow(n11)
subplot(2,3,5)
imshow(o11)
subplot(2,3,6)
imshow(o11)

figure(7)
subplot(2,3,1)
imshow(a111)
subplot(2,3,2)
imshow(b111)
subplot(2,3,3)
imshow(c111)
subplot(2,3,4)
imshow(d111)
subplot(2,3,5)
imshow(e111)
subplot(2,3,6)
imshow(f111)

figure(8)
subplot(2,3,1)
imshow(g111)
subplot(2,3,2)
imshow(h111)
subplot(2,3,3)
imshow(i111)
subplot(2,3,4)
imshow(j111)
subplot(2,3,5)
imshow(k111)
subplot(2,3,6)
imshow(l111)

figure(9)
subplot(2,3,1)
imshow(m111)
subplot(2,3,2)
imshow(n111)
subplot(2,3,3)
imshow(o111)
#}
#--------------------
#{
%saving image to current dictionary
imwrite(a,'einstein_denoised.png')
imwrite(b,'lenna_denoised.png')
imwrite(c,'panda_denoised.png')
imwrite(d,'parrot_denoised.png')
imwrite(e,'plane_denoised.png')
imwrite(f,'tree_denoised.png')
imwrite(g,'baboon_denoised.png')
imwrite(h,'cameraman_denoised.png')
imwrite(i,'1_denoised.png')
imwrite(j,'girl_denoised.png')
imwrite(k,'2_denoised.png')
imwrite(l,'bridge_denoised.png')
imwrite(m,'boy_denoised.png')
imwrite(np,'3_denoised.png')
imwrite(o,'cat_denoised.png')
imwrite(a1,'4_denoised.png')
imwrite(b1,'5_denoised.png')
imwrite(c1,'6_denoised.png')
imwrite(d1,'7_denoised.png')
imwrite(e1,'8_denoised.png')
imwrite(f1,'9_denoised.png')
imwrite(g1,'10_denoised.png')
imwrite(h1,'11_denoised.png')
imwrite(i1,'12_denoised.png')
imwrite(j1,'13_denoised.png')
imwrite(k1,'14_denoised.png')
imwrite(l1,'15_denoised.png')
imwrite(m1,'16_denoised.png')
imwrite(n1,'17_denoised.png')
imwrite(o1,'18_denoised.png')

imwrite(k11,'19_denoised.png')
imwrite(l11,'20_denoised.png')
imwrite(m11,'21_denoised.png')
imwrite(n11,'22_denoised.png')
imwrite(o11,'23_denoised.png')
imwrite(a111,'24_denoised.png')
imwrite(b111,'25_denoised.png')
imwrite(c111,'26_denoised.png')
imwrite(d111,'27_denoised.png')
imwrite(e111,'28_denoised.png')
imwrite(f111,'29_denoised.png')
imwrite(g111,'30_denoised.png')
imwrite(h111,'31_denoised.png')
imwrite(i111,'32_denoised.png')
imwrite(j111,'33_denoised.png')
imwrite(k111,'34_denoised.png')
imwrite(l111,'35_denoised.png')
imwrite(m111,'36_denoised.png')
imwrite(n111,'37_denoised.png')
imwrite(o111,'38_denoised.png')

imwrite(p,'39_denoised.png')
imwrite(q,'40_denoised.png')
imwrite(r,'41_denoised.png')
imwrite(s,'42_denoised.png')
imwrite(t,'43_denoised.png')
imwrite(u,'44_denoised.png')
imwrite(v,'45_denoised.png')
imwrite(w,'46_denoised.png')
imwrite(x,'47_denoised.png')
imwrite(y,'48_denoised.png')
imwrite(z,'49_denoised.png')
imwrite(p1,'50_denoised.png')
imwrite(q1,'51_denoised.png')
imwrite(r1,'52_denoised.png')
#}
%-------------------

E=EES;

nsamples = size(E,1);
N = size(E,2);
Ymax = max(max(E));
YR = linspace(0,Ymax,n);

for j = 1:n
    CumDist(j) = length(find(reshape(E,1,N*nsamples) <= YR(j)))/nsamples;
endfor

p = polyfit(YR,CumDist,Deg);
xiMatr1 = polyval(p,E); %unfolded eigenvalues

function [hnorm,ics] = normhist(vec, nbins)
  [h,ics] = hist(vec,nbins);
  xspan = diff(ics);
  Atot = sum(xspan.*h(1:end-1));
  hnorm = h/Atot;
endfunction

function [Xn,Yn] = HistUnfold(Mat,NN,ns,nbins)
  d = diff(Mat);
  d2 = reshape(d,1,(NN-1)*ns);
  [Yn,Xn] = normhist(d2,nbins);
endfunction

%getting wigner's surmise
[X,Y] = HistUnfold(xiMatr1',N,nsamples,nbins);
figure(15)
bar(X,Y)
hold on
WignerSurmise=@(s) pi*s/2.*exp(-pi*s.^2/4);
s=linspace(0,5,100);
plot(s,WignerSurmise(s))
title("Wigner's Surmise")
hold off

%--------------------------------------
%PDF of eigenvalues 

vector1 = reshape(EES,1,N*nsamples);
[h1,ics1] = hist(vector1,nbins);
xspan1 = diff(ics1);
Atot1 = sum(xspan1.*h1(1:end-1));
hnorm1 = h1/Atot1;

figure(16)
bar(ics1,hnorm1)
hold on
f=@(lam,Q,sigma1,l_maxx,l_minn) Q./(2*pi*sigma1.*lam).*(sqrt((l_maxx-lam).*(lam-l_minn)));

sigma1=sigma21(1);
l_maxx=l_max1(1);
l_minn=l_min1(1);
xval=linspace(0,l_maxx,100);
yval=f(xval,Q,sigma1,l_maxx,l_minn);
plot(xval,yval)
title('Probability Density of Eigenvalues','FontSize',20)

%-------------------------------------
%getting IPR 
figure(17)
IPR=[];
xvals=[];

for i=1:128
  EV=eigenvectors(:,i);
  IPR=[IPR sum(EV.^4)];
  xvals=[xvals i];
endfor

scatter(xvals,IPR)
title('Inverse Participation Ratio','FontSize',20)
hold on 
set(gca,'FontSize',20);
plot([1:128],(3/128)*ones(1,128))

%------------------------
%next nearest neighbourhood spacing
figure(18)
EVs=xiMatr1;
[R1 C1]=size(EVs);
ss=zeros(R1,C1-2);
for i=1:R1
  for j=1:C1-2
    ss(i,j)=(EVs(i,j+2)-EVs(i,j))/2;
  endfor
endfor

NNNS=@(s) 2**18*s.^4/(3**6*pi**3).*exp(-64*s.^2/(9*pi));
s=linspace(0,5,100);
plot(s,NNNS(s))
hold on
[R2,C2]=size(ss);
EEs1=reshape(ss,1,R2*C2);
[aa1 ,bb1]=hist(EEs1,nbins);
xx1=diff(bb1);
Atot2=sum(xx1.*aa1(1:end-1));
Yvalues1=aa1/Atot2;
Xvalues1=bb1;
bar(Xvalues1,Yvalues1)
title('Next Nearest Neighbour Spacing (NNNS)','FontSize',20)
hold off

%----------------------------------------

figure(19)
subplot(1,2,1)
hist(eigenvectors(:,1))
title('Histogram of 1^{st} Eigenvector','FontSize',20)

subplot(1,2,2)
hist(eigenvectors(:,128))
title('Histogram of 128^{th} Eigenvector','FontSize',20)


%------------------------------------------
figure(20)
bar(size31)
title('Eigenvalues between lambda_{max} and lambda_{min}','FontSize',20)

%-------------------------------------------
figure(21)
subplot(1,2,1)
bar(size11)
title('Eigenvalues above lambda_{max}','FontSize',20)

subplot(1,2,2)
bar(size21)
title('Eigenvalues below lambda_{min}','FontSize',20)
#}
%----------------------------------------------

Noise_matrix=cell(1,128);

Noise_matrix(1)=(I1-fix(255*mat2gray(I1_denoised)));
Noise_matrix(2)=(I2-fix(255*mat2gray(I2_denoised)));
Noise_matrix(3)=(I3-fix(255*mat2gray(I3_denoised)));
Noise_matrix(4)=(I4-fix(255*mat2gray(I4_denoised)));
Noise_matrix(5)=(I5-fix(255*mat2gray(I5_denoised)));
Noise_matrix(6)=(I6-fix(255*mat2gray(I6_denoised)));
Noise_matrix(7)=(I7-fix(255*mat2gray(I7_denoised)));
Noise_matrix(8)=(I8-fix(255*mat2gray(I8_denoised)));
Noise_matrix(9)=(I9-fix(255*mat2gray(I9_denoised)));
Noise_matrix(10)=(I10-fix(255*mat2gray(I10_denoised)));
Noise_matrix(11)=(I11-fix(255*mat2gray(I11_denoised)));
Noise_matrix(12)=(I12-fix(255*mat2gray(I12_denoised)));
Noise_matrix(13)=(I13-fix(255*mat2gray(I13_denoised)));
Noise_matrix(14)=(I14-fix(255*mat2gray(I14_denoised)));
Noise_matrix(15)=(I15-fix(255*mat2gray(I15_denoised)));
Noise_matrix(16)=(I16-fix(255*mat2gray(I16_denoised)));
Noise_matrix(17)=(I17-fix(255*mat2gray(I17_denoised)));
Noise_matrix(18)=(I18-fix(255*mat2gray(I18_denoised)));
Noise_matrix(19)=(I19-fix(255*mat2gray(I19_denoised)));
Noise_matrix(20)=(I20-fix(255*mat2gray(I20_denoised)));

Noise_matrix(21)=(I21-fix(255*mat2gray(I21_denoised)));
Noise_matrix(22)=(I22-fix(255*mat2gray(I22_denoised)));
Noise_matrix(23)=(I23-fix(255*mat2gray(I23_denoised)));
Noise_matrix(24)=(I24-fix(255*mat2gray(I24_denoised)));
Noise_matrix(25)=(I25-fix(255*mat2gray(I25_denoised)));
Noise_matrix(26)=(I26-fix(255*mat2gray(I26_denoised)));
Noise_matrix(27)=(I27-fix(255*mat2gray(I27_denoised)));
Noise_matrix(28)=(I28-fix(255*mat2gray(I28_denoised)));
Noise_matrix(29)=(I29-fix(255*mat2gray(I29_denoised)));
Noise_matrix(30)=(I30-fix(255*mat2gray(I30_denoised)));
Noise_matrix(31)=(I31-fix(255*mat2gray(I31_denoised)));
Noise_matrix(32)=(I32-fix(255*mat2gray(I32_denoised)));
Noise_matrix(33)=(I33-fix(255*mat2gray(I33_denoised)));
Noise_matrix(34)=(I34-fix(255*mat2gray(I34_denoised)));
Noise_matrix(35)=(I35-fix(255*mat2gray(I35_denoised)));
Noise_matrix(36)=(I36-fix(255*mat2gray(I36_denoised)));
Noise_matrix(37)=(I37-fix(255*mat2gray(I37_denoised)));
Noise_matrix(38)=(I38-fix(255*mat2gray(I38_denoised)));
Noise_matrix(39)=(I39-fix(255*mat2gray(I39_denoised)));
Noise_matrix(40)=(I40-fix(255*mat2gray(I40_denoised)));

Noise_matrix(41)=(I41-fix(255*mat2gray(I41_denoised)));
Noise_matrix(42)=(I42-fix(255*mat2gray(I42_denoised)));
Noise_matrix(43)=(I43-fix(255*mat2gray(I43_denoised)));
Noise_matrix(44)=(I44-fix(255*mat2gray(I44_denoised)));
Noise_matrix(45)=(I45-fix(255*mat2gray(I45_denoised)));
Noise_matrix(46)=(I46-fix(255*mat2gray(I46_denoised)));
Noise_matrix(47)=(I47-fix(255*mat2gray(I47_denoised)));
Noise_matrix(48)=(I48-fix(255*mat2gray(I48_denoised)));
Noise_matrix(49)=(I49-fix(255*mat2gray(I49_denoised)));
Noise_matrix(50)=(I50-fix(255*mat2gray(I50_denoised)));
Noise_matrix(51)=(I51-fix(255*mat2gray(I51_denoised)));
Noise_matrix(52)=(I52-fix(255*mat2gray(I52_denoised)));
Noise_matrix(53)=(I53-fix(255*mat2gray(I53_denoised)));
Noise_matrix(54)=(I54-fix(255*mat2gray(I54_denoised)));
Noise_matrix(55)=(I55-fix(255*mat2gray(I55_denoised)));
Noise_matrix(56)=(I56-fix(255*mat2gray(I56_denoised)));
Noise_matrix(57)=(I57-fix(255*mat2gray(I57_denoised)));
Noise_matrix(58)=(I58-fix(255*mat2gray(I58_denoised)));
Noise_matrix(59)=(I59-fix(255*mat2gray(I59_denoised)));
Noise_matrix(60)=(I60-fix(255*mat2gray(I60_denoised)));

Noise_matrix(61)=(I61-fix(255*mat2gray(I61_denoised)));
Noise_matrix(62)=(I62-fix(255*mat2gray(I62_denoised)));
Noise_matrix(63)=(I63-fix(255*mat2gray(I63_denoised)));
Noise_matrix(64)=(I64-fix(255*mat2gray(I64_denoised)));
Noise_matrix(65)=(I65-fix(255*mat2gray(I65_denoised)));
Noise_matrix(66)=(I66-fix(255*mat2gray(I66_denoised)));
Noise_matrix(67)=(I67-fix(255*mat2gray(I67_denoised)));
Noise_matrix(68)=(I68-fix(255*mat2gray(I68_denoised)));
Noise_matrix(69)=(I69-fix(255*mat2gray(I69_denoised)));
Noise_matrix(70)=(I70-fix(255*mat2gray(I70_denoised)));
Noise_matrix(71)=(I71-fix(255*mat2gray(I71_denoised)));
Noise_matrix(72)=(I72-fix(255*mat2gray(I72_denoised)));
Noise_matrix(73)=(I73-fix(255*mat2gray(I73_denoised)));
Noise_matrix(74)=(I74-fix(255*mat2gray(I74_denoised)));
Noise_matrix(75)=(I75-fix(255*mat2gray(I75_denoised)));
Noise_matrix(76)=(I76-fix(255*mat2gray(I76_denoised)));
Noise_matrix(77)=(I77-fix(255*mat2gray(I77_denoised)));
Noise_matrix(78)=(I78-fix(255*mat2gray(I78_denoised)));
Noise_matrix(79)=(I79-fix(255*mat2gray(I79_denoised)));
Noise_matrix(80)=(I80-fix(255*mat2gray(I80_denoised)));

Noise_matrix(81)=(I81-fix(255*mat2gray(I81_denoised)));
Noise_matrix(82)=(I82-fix(255*mat2gray(I82_denoised)));
Noise_matrix(83)=(I83-fix(255*mat2gray(I83_denoised)));
Noise_matrix(84)=(I84-fix(255*mat2gray(I84_denoised)));
Noise_matrix(85)=(I85-fix(255*mat2gray(I85_denoised)));
Noise_matrix(86)=(I86-fix(255*mat2gray(I86_denoised)));
Noise_matrix(87)=(I87-fix(255*mat2gray(I87_denoised)));
Noise_matrix(88)=(I88-fix(255*mat2gray(I88_denoised)));
Noise_matrix(89)=(I89-fix(255*mat2gray(I89_denoised)));
Noise_matrix(90)=(I90-fix(255*mat2gray(I90_denoised)));
Noise_matrix(91)=(I91-fix(255*mat2gray(I91_denoised)));
Noise_matrix(92)=(I92-fix(255*mat2gray(I92_denoised)));
Noise_matrix(93)=(I93-fix(255*mat2gray(I93_denoised)));
Noise_matrix(94)=(I94-fix(255*mat2gray(I94_denoised)));
Noise_matrix(95)=(I95-fix(255*mat2gray(I95_denoised)));
Noise_matrix(96)=(I96-fix(255*mat2gray(I96_denoised)));
Noise_matrix(97)=(I97-fix(255*mat2gray(I97_denoised)));
Noise_matrix(98)=(I98-fix(255*mat2gray(I98_denoised)));
Noise_matrix(99)=(I99-fix(255*mat2gray(I99_denoised)));
Noise_matrix(100)=(I100-fix(255*mat2gray(I100_denoised)));

Noise_matrix(101)=(I101-fix(255*mat2gray(I101_denoised)));
Noise_matrix(102)=(I102-fix(255*mat2gray(I102_denoised)));
Noise_matrix(103)=(I103-fix(255*mat2gray(I103_denoised)));
Noise_matrix(104)=(I104-fix(255*mat2gray(I104_denoised)));
Noise_matrix(105)=(I105-fix(255*mat2gray(I105_denoised)));
Noise_matrix(106)=(I106-fix(255*mat2gray(I106_denoised)));
Noise_matrix(107)=(I107-fix(255*mat2gray(I107_denoised)));
Noise_matrix(108)=(I108-fix(255*mat2gray(I108_denoised)));
Noise_matrix(109)=(I109-fix(255*mat2gray(I109_denoised)));
Noise_matrix(110)=(I110-fix(255*mat2gray(I110_denoised)));
Noise_matrix(111)=(I111-fix(255*mat2gray(I111_denoised)));
Noise_matrix(112)=(I112-fix(255*mat2gray(I112_denoised)));
Noise_matrix(113)=(I113-fix(255*mat2gray(I113_denoised)));
Noise_matrix(114)=(I114-fix(255*mat2gray(I114_denoised)));
Noise_matrix(115)=(I115-fix(255*mat2gray(I115_denoised)));
Noise_matrix(116)=(I116-fix(255*mat2gray(I116_denoised)));
Noise_matrix(117)=(I117-fix(255*mat2gray(I117_denoised)));
Noise_matrix(118)=(I118-fix(255*mat2gray(I118_denoised)));
Noise_matrix(119)=(I119-fix(255*mat2gray(I119_denoised)));
Noise_matrix(120)=(I120-fix(255*mat2gray(I120_denoised)));

Noise_matrix(121)=(I121-fix(255*mat2gray(I121_denoised)));
Noise_matrix(122)=(I122-fix(255*mat2gray(I122_denoised)));
Noise_matrix(123)=(I123-fix(255*mat2gray(I123_denoised)));
Noise_matrix(124)=(I124-fix(255*mat2gray(I124_denoised)));
Noise_matrix(125)=(I125-fix(255*mat2gray(I125_denoised)));
Noise_matrix(126)=(I126-fix(255*mat2gray(I126_denoised)));
Noise_matrix(127)=(I127-fix(255*mat2gray(I127_denoised)));
Noise_matrix(128)=(I128-fix(255*mat2gray(I128_denoised)));

EigenValuesNoise=[];

for i=1:128
  temp111=Noise_matrix(i);
  M3=cell2mat(temp111);
  M4=(M3-sum(M3))./std(M3);
  M4=(M4+M4')/2;
  WM3=M4*M4'/200;
  [temp112 Lambda1]=eig(WM3);
  Lambda1=sum(Lambda1)';
  EigenValuesNoise=[EigenValuesNoise Lambda1];
endfor

EigenValuesNoise=EigenValuesNoise';

[R5 C5]=size(EigenValuesNoise);
EigenValuesNoise1=reshape(EigenValuesNoise,1,R5*C5);

[aa1, bb1]=hist(EigenValuesNoise1,nbins);
xx1=diff(bb1);
Atot2=sum(xx1.*aa1(1:end-1));
Yvalues1=aa1/Atot2;
Xvalues1=bb1;
bar(Xvalues1,Yvalues1)
title('Probability Distribution of EigenValues','FontSize',20)
set(gca,'FontSize',20);
%--------------------------------------------

E=EigenValuesNoise;

nsamples = size(E,1);
N = size(E,2);
Ymax = max(max(E));
YR = linspace(0,Ymax,n);

for j = 1:n
    CumDist(j) = length(find(reshape(E,1,N*nsamples) <= YR(j)))/nsamples;
endfor

p = polyfit(YR,CumDist,Deg);
xiMatr1 = polyval(p,E); %unfolded eigenvalues

function [hnorm,ics] = normhist(vec, nbins)
  [h,ics] = hist(vec,nbins);
  xspan = diff(ics);
  Atot = sum(xspan.*h(1:end-1));
  hnorm = h/Atot;
endfunction

function [Xn,Yn] = HistUnfold(Mat,NN,ns,nbins)
  d = diff(Mat);
  d2 = reshape(d,1,(NN-1)*ns);
  [Yn,Xn] = normhist(d2,nbins);
endfunction

%getting wigner's surmise
[X,Y] = HistUnfold(xiMatr1',N,nsamples,nbins);
figure(15)
bar(X,Y)
hold on
WignerSurmise=@(s) pi*s/2.*exp(-pi*s.^2/4);
s=linspace(0,5,100);
plot(s,WignerSurmise(s))
set(gca,'FontSize',20)
title("Wigner's Surmise",'FontSize',20)
hold off


%-------------------------------------------

GD=@(mu,sigma,x) 1/(2*pi*sigma**2)*exp(-0.5*((x-mu)/sigma).^2);
x=linspace(-1.5,1.5,100);

EigenVector=eigenvectors(:,12)';
y=GD(mean(EigenVector),std(EigenVector),x);
subplot(1,2,1)
plot(x,y)
hold on
set(gca,'FontSize',20);
title('Histogram of 20^{th} eigenvector')
hist(EigenVector,10,90)

EigenVector=eigenvectors(:,128)';
y=GD(mean(EigenVector),std(EigenVector),x);
subplot(1,2,2)
plot(x,y)
hold on
set(gca,'FontSize',20);
title('Histogram of 128^{th} eigenvector')
hist(EigenVector,10,90)