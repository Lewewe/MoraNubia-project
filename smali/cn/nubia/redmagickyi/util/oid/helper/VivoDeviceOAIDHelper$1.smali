.class Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper$1;
.super Landroid/os/Handler;
.source "VivoDeviceOAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;->access$000(Lcn/nubia/redmagickyi/util/oid/helper/VivoDeviceOAIDHelper;ILjava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method
