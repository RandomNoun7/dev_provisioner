[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-PackageProvider -Name NuGet -RequiredVersion 2.8.5.201 -Force

$psrepoxml = @"
<Objs Version="1.1.0.1" xmlns="http://schemas.microsoft.com/powershell/2004/04">
  <Obj RefId="0">
    <TN RefId="0">
      <T>System.Collections.Hashtable</T>
      <T>System.Object</T>
    </TN>
    <DCT>
      <En>
        <S N="Key">PSGallery</S>
        <Obj N="Value" RefId="1">
          <TN RefId="1">
            <T>Microsoft.PowerShell.Commands.PSRepository</T>
            <T>System.Management.Automation.PSCustomObject</T>
            <T>System.Object</T>
          </TN>
          <MS>
            <S N="Name">PSGallery</S>
            <S N="SourceLocation">https://www.powershellgallery.com/api/v2</S>
            <S N="PublishLocation">https://www.powershellgallery.com/api/v2/package/</S>
            <S N="ScriptSourceLocation">https://www.powershellgallery.com/api/v2/items/psscript</S>
            <S N="ScriptPublishLocation">https://www.powershellgallery.com/api/v2/package/</S>
            <Obj N="Trusted" RefId="2">
              <TN RefId="2">
                <T>System.Management.Automation.SwitchParameter</T>
                <T>System.ValueType</T>
                <T>System.Object</T>
              </TN>
              <ToString>True</ToString>
              <Props>
                <B N="IsPresent">true</B>
              </Props>
            </Obj>
            <B N="Registered">true</B>
            <S N="InstallationPolicy">Trusted</S>
            <S N="PackageManagementProvider">NuGet</S>
            <Obj N="ProviderOptions" RefId="3">
              <TNRef RefId="0" />
              <DCT />
            </Obj>
          </MS>
        </Obj>
      </En>
    </DCT>
  </Obj>
</Objs>
"@

Set-Content 'C:\Users\Administrator\AppData\Local\Microsoft\Windows\PowerShell\PowerShellGet\PSRepositories.xml' -value $psrepoxml -force
