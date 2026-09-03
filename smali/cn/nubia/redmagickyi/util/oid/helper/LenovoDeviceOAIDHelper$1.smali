.class Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$1;
.super Ljava/lang/Object;
.source "LenovoDeviceOAIDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;

    new-instance p1, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up$len_down;

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface$Baselen_up$len_down;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper;->lenovoIDInterface:Lcn/nubia/redmagickyi/util/oid/helper/LenovoDeviceOAIDHelper$LenovoIDInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
