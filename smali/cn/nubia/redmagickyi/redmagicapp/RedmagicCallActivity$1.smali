.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$1;
.super Ljava/lang/Object;
.source "RedmagicCallActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/AudioFocus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->initAudioFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGainFocus()Z
    .locals 1

    .line 135
    const-string p0, "CallFragment"

    const-string v0, "onGainFocus"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onLossFocus()Z
    .locals 2

    .line 113
    const-string v0, "CallFragment"

    const-string v1, "onLossFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeMessages(I)V

    .line 115
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 116
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 117
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public onLossFocusTransient()Z
    .locals 2

    .line 124
    const-string v0, "CallFragment"

    const-string v1, "onLossFocusTransient"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->removeMessages(I)V

    .line 126
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 127
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 128
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;->access$000(Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity;)Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicCallActivity$CallHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method
