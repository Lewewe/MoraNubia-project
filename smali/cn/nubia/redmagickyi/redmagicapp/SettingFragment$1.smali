.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$1;
.super Landroid/os/Handler;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private sendOnVolumeChanged(I)V
    .locals 2

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->getOpCallback()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment$OpCallback;

    .line 95
    instance-of v1, v0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OnSettingOpListener;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OnSettingOpListener;

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$OnSettingOpListener;->onVolumeChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$1;->sendOnVolumeChanged(I)V

    :goto_0
    return-void
.end method
