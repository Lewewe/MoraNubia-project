.class public Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;
.super Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;
.source "NubiaAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IGetAccountInfoListenerIml"
.end annotation


# instance fields
.field private accountLoginInterface:Lcom/zte/zteaccount/AccountLoginInterface;

.field private invokeThread:Ljava/lang/Thread;

.field private nubiaAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;


# direct methods
.method public constructor <init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Lcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    invoke-direct {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;-><init>()V

    .line 341
    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->accountLoginInterface:Lcom/zte/zteaccount/AccountLoginInterface;

    .line 342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->invokeThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 348
    new-instance v0, Lcom/zte/zteaccount/account/AccountInfo;

    .line 349
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getTokenId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/zteaccount/account/AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->nubiaAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    .line 352
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zteaccount/account/AccountInfo;->setNickName(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->nubiaAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zteaccount/account/AccountInfo;->setMobile(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->nubiaAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zte/zteaccount/account/AccountInfo;->setEmail(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->invokeThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->nubiaAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->accountLoginInterface:Lcom/zte/zteaccount/AccountLoginInterface;

    invoke-static {p1, v0, v1, p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$700(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    sget-boolean p1, Lcom/zte/aigc/utils/LogUtil;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 362
    invoke-static {p2}, Lcom/zte/aigc/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object p2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->invokeThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->nubiaAccountInfo:Lcom/zte/zteaccount/account/AccountInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$IGetAccountInfoListenerIml;->accountLoginInterface:Lcom/zte/zteaccount/AccountLoginInterface;

    invoke-static {p1, p2, v0, p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$800(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;ZLcom/zte/zteaccount/AccountLoginInterface;)V

    return-void
.end method
