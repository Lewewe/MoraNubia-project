.class Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$1;
.super Landroid/os/Handler;
.source "RedmagicManagerCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback$1;->this$0:Lcn/nubia/redmagickyi/care/manager/RedmagicManagerCallback;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 265
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
