.class Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;
.super Ljava/lang/Object;
.source "DevicesOIDGetter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->getIDFromNewThead(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

.field final synthetic val$contextm:Landroid/content/Context;

.field final synthetic val$manufacturerm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$manufacturerm:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$contextm:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    const-string v0, "ASUS"

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$manufacturerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$contextm:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$100(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/ASUSDeviceOAIDHelper;->getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    goto/16 :goto_1

    .line 149
    :cond_0
    const-string v0, "HUAWEI"

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$manufacturerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$contextm:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$100(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/HWDeviceOAIDHelper;->getHWID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    goto/16 :goto_1

    .line 151
    :cond_1
    const-string v0, "OPPO"

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$manufacturerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$contextm:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$100(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/OppoDeviceOAIDHelper;->getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)Ljava/lang/String;

    goto/16 :goto_1

    .line 153
    :cond_2
    const-string v0, "ONEPLUS"

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$manufacturerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$contextm:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$100(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_3
    const-string v0, "ZTE"

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$manufacturerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$contextm:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$100(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    goto :goto_1

    .line 157
    :cond_4
    const-string v0, "FERRMEOS"

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$manufacturerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$200(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 159
    :cond_5
    const-string v0, "SSUI"

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$manufacturerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$300(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    :cond_6
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$contextm:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$100(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    goto :goto_1

    .line 158
    :cond_7
    :goto_0
    new-instance v0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;

    iget-object v1, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->val$contextm:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter$2;->this$0:Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;->access$100(Lcn/nubia/redmagickyi/util/oid/DevicesOIDGetter;)Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->getID(Lcn/nubia/redmagickyi/util/oid/inf/AppIdsUpdater;)V

    :cond_8
    :goto_1
    return-void
.end method
