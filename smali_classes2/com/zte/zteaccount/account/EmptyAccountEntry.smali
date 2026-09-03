.class public Lcom/zte/zteaccount/account/EmptyAccountEntry;
.super Lcom/zte/zteaccount/account/BaseAccountEntry;
.source "EmptyAccountEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/zte/zteaccount/account/BaseAccountEntry;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/zte/zteaccount/account/EmptyAccountEntry;->AccountResPonse(Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    return-void
.end method

.method public getAccountLoginBundle()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 0

    .line 39
    const-string p0, ""

    return-object p0
.end method

.method public isAccountLogin(Lcom/zte/zteaccount/AccountLoginInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 24
    invoke-interface {p1, p0}, Lcom/zte/zteaccount/AccountLoginInterface;->isAccountLogin(Z)V

    return-void
.end method

.method public onGetCloudToken()Lcom/zte/aigc/vo/CloudToken;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public switchToLoginPage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    return-void
.end method

.method public switchToLoginPage(Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    return-void
.end method
