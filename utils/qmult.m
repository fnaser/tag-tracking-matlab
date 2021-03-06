function QM = qmult(q, r)
%
% QM = qmult(QL, QR)
%
% multiplies quaternions:  QM = QL * QR
%
%% ------ input -------
% QL     n x 4 array of quaternions [w, x, y, z]
% QR     n x 4 array of quaternions [w, x, y, z]
%% ------ output -------
% QM     n x 4 array of row-wise products QL * QR

    QM = [r(:,1).*q(:,1)-r(:,2).*q(:,2)-r(:,3).*q(:,3)-r(:,4).*q(:,4), ...
          r(:,1).*q(:,2)+r(:,2).*q(:,1)-r(:,3).*q(:,4)+r(:,4).*q(:,3), ...
          r(:,1).*q(:,3)+r(:,2).*q(:,4)+r(:,3).*q(:,1)-r(:,4).*q(:,2), ...
          r(:,1).*q(:,4)-r(:,2).*q(:,3)+r(:,3).*q(:,2)+r(:,4).*q(:,1)];
end

