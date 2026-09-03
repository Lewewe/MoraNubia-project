.class Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3$1;
.super Landroid/os/Handler;
.source "PCLiveSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3$1;->this$1:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3$1;->this$1:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;

    const-string v0, "ar_image_item"

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/ar/ui/fragment/PCLiveSettingFragment;->sendOnMobileLiveSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
