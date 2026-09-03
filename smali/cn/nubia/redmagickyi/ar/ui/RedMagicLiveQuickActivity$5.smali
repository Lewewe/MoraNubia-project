.class Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$5;
.super Ljava/lang/Object;
.source "RedMagicLiveQuickActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnComputerListener;


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

    .line 140
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComPuter()V
    .locals 2

    .line 143
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startPcLive:Z

    .line 147
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->access$200(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->access$200(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$5;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->ar_start_live_guide_text:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog;->show(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
