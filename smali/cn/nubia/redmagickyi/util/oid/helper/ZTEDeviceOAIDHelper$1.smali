.class Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$1;
.super Ljava/lang/Object;
.source "ZTEDeviceOAIDHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 94
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper$1;->this$0:Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;

    iget-object p0, p0, Lcn/nubia/redmagickyi/util/oid/helper/ZTEDeviceOAIDHelper;->linkedBlockingQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
