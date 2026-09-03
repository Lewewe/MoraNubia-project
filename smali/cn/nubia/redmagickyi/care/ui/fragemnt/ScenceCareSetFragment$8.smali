.class Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;
.super Ljava/lang/Object;
.source "ScenceCareSetFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderCkearClick()V
    .locals 2

    .line 538
    invoke-static {}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "do clear\uff1a type\uff1a1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$200(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const-string v0, "company_wifi"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$800(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->care_network_wifi_selected:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWifiItemClick(Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 531
    invoke-static {}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wifi clicked\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", type\uff1a1, wifiName\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$200(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    const-string p1, "company_wifi"

    invoke-static {p1, p3}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->access$800(Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment$8;->this$0:Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->care_network_wifi_selected:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/care/ui/fragemnt/ScenceCareSetFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
