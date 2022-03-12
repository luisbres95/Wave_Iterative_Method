function showpatch = showpatch()

param;
%patch
Xp = [-W/2,W/2,W/2,-W/2];
Yp = [-L/2,-L/2,L/2,L/2];
Zp = [h2+2*tt,h2+2*tt,h2+2*tt,h2+2*tt];
%patch face 1
Xp1 = [-(W)/2,(W)/2,(W)/2,-(W)/2];
Yp1 = [-(L)/2,-(L)/2,-(L)/2,-(L)/2];
Zp1 = [h2+2*tt,h2+2*tt,h2+tt,h2+tt];
%patch face 2
Xp2 = [-(W)/2,-(W)/2,-(W)/2,-(W)/2];
Yp2 = [-(L)/2,(L)/2,(L)/2,-(L)/2];
Zp2 = [h2+2*tt,h2+2*tt,h2+tt,h2+tt];
%patch 3
Xp3 = [(W)/2,(W)/2,(W)/2,(W)/2];
Yp3 = [-(L)/2,(L)/2,(L)/2,-(L)/2];
Zp3 = [h2+2*tt,h2+2*tt,h2+tt,h2+tt];
%patch 4
Xp4 = [-(W)/2,(W)/2,(W)/2,-(W)/2];
Yp4 = [(L)/2,(L)/2,(L)/2,(L)/2];
Zp4 = [h2+2*tt,h2+2*tt,h2+tt,h2+tt];

%Ground Plane
Xg = [-(W+dLW)/2,(W+dLW)/2,(W+dLW)/2,-(W+dLW)/2];
Yg = [-(L+dLW)/2,-(L+dLW)/2,(L+dLW)/2,(L+dLW)/2];
Zg = [0,0,0,0];
%ground plane face 1
Xg1 = [-(W+dLW)/2,(W+dLW)/2,(W+dLW)/2,-(W+dLW)/2];
Yg1 = [-(L+dLW)/2,-(L+dLW)/2,-(L+dLW)/2,-(L+dLW)/2];
Zg1 = [tt,tt,0,0];
%ground plane face 2
Xg2 = [-(W+dLW)/2,-(W+dLW)/2,-(W+dLW)/2,-(W+dLW)/2];
Yg2 = [-(L+dLW)/2,(L+dLW)/2,(L+dLW)/2,-(L+dLW)/2];
Zg2 = [tt,tt,0,0];
%ground plane 3
Xg3 = [(W+dLW)/2,(W+dLW)/2,(W+dLW)/2,(W+dLW)/2];
Yg3 = [-(L+dLW)/2,(L+dLW)/2,(L+dLW)/2,-(L+dLW)/2];
Zg3 = [tt,tt,0,0];
%ground plane 4
Xg4 = [-(W+dLW)/2,(W+dLW)/2,(W+dLW)/2,-(W+dLW)/2];
Yg4 = [(L+dLW)/2,(L+dLW)/2,(L+dLW)/2,(L+dLW)/2];
Zg4 = [tt,tt,0,0];

%substrate
Xs = [-(W+dLW)/2,(W+dLW)/2,(W+dLW)/2,-(W+dLW)/2];
Ys = [-(L+dLW)/2,-(L+dLW)/2,(L+dLW)/2,(L+dLW)/2];
Zs = [h2+tt,h2+tt,h2+tt,h2+tt];
%substrate face 1
Xs1 = [-(W+dLW)/2,(W+dLW)/2,(W+dLW)/2,-(W+dLW)/2];
Ys1 = [-(L+dLW)/2,-(L+dLW)/2,-(L+dLW)/2,-(L+dLW)/2];
Zs1 =  [h2+tt,h2+tt,tt,tt];
%substrate face 2
Xs2 = [-(W+dLW)/2,-(W+dLW)/2,-(W+dLW)/2,-(W+dLW)/2];
Ys2 = [-(L+dLW)/2,(L+dLW)/2,(L+dLW)/2,-(L+dLW)/2];
Zs2 = [h2+tt,h2+tt,tt,tt];
%substrate face 3
Xs3 = [(W+dLW)/2,(W+dLW)/2,(W+dLW)/2,(W+dLW)/2];
Ys3 = [-(L+dLW)/2,(L+dLW)/2,(L+dLW)/2,-(L+dLW)/2];
Zs3 = [h2+tt,h2+tt,tt,tt];
%substrate face 4
Xs4 = [-(W+dLW)/2,(W+dLW)/2,(W+dLW)/2,-(W+dLW)/2];
Ys4 = [(L+dLW)/2,(L+dLW)/2,(L+dLW)/2,(L+dLW)/2];
Zs4 = [h2+tt,h2+tt,tt,tt];



hold on
k=0.1;
fill3(Xp,Yp,Zp,[1 1 0],'FaceAlpha',k);
fill3(Xp1,Yp1,Zp1,[1 1 0],'FaceAlpha',k);
fill3(Xp2,Yp2,Zp2,[1 1 0],'FaceAlpha',k);
fill3(Xp3,Yp3,Zp3,[1 1 0],'FaceAlpha',k);
fill3(Xp4,Yp4,Zp4,[1 1 0],'FaceAlpha',k);
fill3(Xg,Yg,Zg,[1 1 0],'FaceAlpha',k);
fill3(Xg1,Yg1,Zg1,[1 1 0],'FaceAlpha',k);
fill3(Xg2,Yg2,Zg2,[1 1 0],'FaceAlpha',k);
fill3(Xg3,Yg3,Zg3,[1 1 0],'FaceAlpha',k);
fill3(Xg4,Yg4,Zg4,[1 1 0],'FaceAlpha',k);
fill3(Xs,Ys,Zs,[0, 0.75, 0.75],'FaceAlpha',k);
fill3(Xs1,Ys1,Zs1,[0, 0.75, 0.75],'FaceAlpha',k);
fill3(Xs2,Ys2,Zs2,[0, 0.75, 0.75],'FaceAlpha',k);
fill3(Xs3,Ys3,Zs3,[0, 0.75, 0.75],'FaceAlpha',k);
fill3(Xs4,Ys4,Zs4,[0, 0.75, 0.75],'FaceAlpha',k);
xlabel('x')
ylabel('y')
zlabel('z')
hold off


end

