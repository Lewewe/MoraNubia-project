.class Lcn/nubia/accountsdk/http/HttpAsyncRequest$1;
.super Ljava/lang/Object;
.source "HttpAsyncRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/accountsdk/http/HttpAsyncRequest;->deliverResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/accountsdk/http/HttpAsyncRequest;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/nubia/accountsdk/http/HttpAsyncRequest;Ljava/lang/Object;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest$1;->this$0:Lcn/nubia/accountsdk/http/HttpAsyncRequest;

    iput-object p2, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest$1;->this$0:Lcn/nubia/accountsdk/http/HttpAsyncRequest;

    iget-object p0, p0, Lcn/nubia/accountsdk/http/HttpAsyncRequest$1;->val$result:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcn/nubia/accountsdk/http/HttpAsyncRequest;->access$000(Lcn/nubia/accountsdk/http/HttpAsyncRequest;Ljava/lang/Object;)V

    return-void
.end method
