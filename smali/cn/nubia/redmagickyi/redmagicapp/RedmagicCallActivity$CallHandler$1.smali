.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler$1;
.super Ljava/lang/Object;
.source "RedmagicCallActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

.field final synthetic val$activity:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 534
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler$1;->val$activity:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playRingtone onError, mp = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", what = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", extra = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CallFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler$1;->val$activity:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    const-wide/16 p1, 0xc8

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$900(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;J)V

    const/4 p0, 0x0

    return p0
.end method
