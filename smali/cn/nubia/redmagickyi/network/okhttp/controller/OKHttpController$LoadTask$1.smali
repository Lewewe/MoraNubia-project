.class Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask$1;
.super Ljava/lang/Object;
.source "OKHttpController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask$1;->this$1:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 327
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask$1;->this$1:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->onSuccessInMainThread(Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 330
    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask$1;->this$1:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;

    iget-object p0, p0, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController$LoadTask;->this$0:Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->onErrorInMainThread(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_1
    :goto_0
    return v1
.end method
