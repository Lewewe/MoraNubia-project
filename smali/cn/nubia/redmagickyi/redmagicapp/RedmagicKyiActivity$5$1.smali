.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/RequestBackgroundLocationPermissionDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 611
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 612
    sput-boolean v1, Lcn/nubia/redmagickyi/util/Utils;->waitWeatherPermission:Z

    .line 613
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;

    iget-object v1, v1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 614
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;

    iget-object v0, v0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 616
    sput-boolean p1, Lcn/nubia/redmagickyi/util/Utils;->waitWeatherPermission:Z

    .line 617
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, p1

    const/16 p1, 0xbb9

    invoke-virtual {v2, v1, p1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 620
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$5;->val$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->access$100(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;Landroid/content/Context;)V

    return-void
.end method
