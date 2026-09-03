.class Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$1;
.super Ljava/lang/Object;
.source "OnePlusDeviceOAIDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;

    invoke-static {p2}, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface$Baseup;->genInterface(Landroid/os/IBinder;)Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->onePlusIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper;->onePlusIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/OnePlusDeviceOAIDHelper$OnePlusIDInterface;

    return-void
.end method
