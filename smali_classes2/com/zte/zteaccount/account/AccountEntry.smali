.class public interface abstract Lcom/zte/zteaccount/account/AccountEntry;
.super Ljava/lang/Object;
.source "AccountEntry.java"


# static fields
.field public static final EXTRA_CHANGE:Ljava/lang/String; = "change"

.field public static final EXTRA_LOGIN:Ljava/lang/String; = "login"

.field public static final EXTRA_LOGOUT:Ljava/lang/String; = "logout"

.field public static final SP_NAME_ACCOUNT:Ljava/lang/String; = "aigc_account"


# virtual methods
.method public abstract clearCloudToken()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation
.end method

.method public abstract getAccountLoginBundle()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation
.end method

.method public abstract getCloudToken(Lcom/zte/zteaccount/CloudTokenInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zte/aigc/common/RequestException;
        }
    .end annotation
.end method

.method public abstract getUserToken()Ljava/lang/String;
.end method

.method public abstract isAccountLogin(Lcom/zte/zteaccount/AccountLoginInterface;)V
.end method

.method public abstract switchToLoginPage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation
.end method

.method public abstract switchToLoginPage(Landroid/app/Activity;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation
.end method
