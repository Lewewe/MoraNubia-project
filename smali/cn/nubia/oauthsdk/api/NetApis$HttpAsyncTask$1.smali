.class Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask$1;
.super Ljava/lang/Object;
.source "NetApis.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->handResult(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask$1;->this$1:Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;

    iput-object p2, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask$1;->this$1:Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;

    iget-object p0, p0, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask$1;->val$result:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;->access$000(Lcn/nubia/oauthsdk/api/NetApis$HttpAsyncTask;Ljava/lang/Object;)V

    return-void
.end method
