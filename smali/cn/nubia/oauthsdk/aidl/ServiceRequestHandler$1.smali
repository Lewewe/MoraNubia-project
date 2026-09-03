.class Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler$1;
.super Ljava/lang/Object;
.source "ServiceRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler$1;->this$0:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 67
    const-string v0, "ServiceRequestHandler bindService:"

    invoke-static {v0}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler$1;->this$0:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-static {v0}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->access$100(Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler$1;->this$0:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    invoke-static {v1}, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;->access$000(Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler$1;->this$0:Lcn/nubia/oauthsdk/aidl/ServiceRequestHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
