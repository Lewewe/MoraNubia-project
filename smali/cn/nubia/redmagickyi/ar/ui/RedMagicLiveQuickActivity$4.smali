.class Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;
.super Ljava/lang/Object;
.source "RedMagicLiveQuickActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnMobileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->initLiveSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobile()V
    .locals 5

    .line 120
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->access$002(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;Z)Z

    .line 128
    invoke-static {}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->getInstance()Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mora_live_mobile"

    const-string/jumbo v3, "yes"

    const-string v4, "mora_live"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/nubia/redmagickyi/commonui/nubia/trackclient/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.redmagickyi.pose.livemode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "livemode"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/MobileLiveActivity;->launchFromOutside(Landroid/content/Context;)V

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->finish()V

    return-void
.end method
