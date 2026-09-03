.class Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;
.super Ljava/lang/Object;
.source "NubiaAccountManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/NubiaAccountManager;->getUserId(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onUserIdCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$onUserIdCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 7

    .line 108
    const-string v0, "pref_local_id_v2"

    .line 113
    iget-object v1, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$context:Landroid/content/Context;

    const-string v2, "pref_acct_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    const-string v2, "pref_local_id"

    const/4 v4, 0x0

    if-nez p1, :cond_2

    .line 116
    :try_start_0
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/utils/AESUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v4

    :goto_0
    if-nez p1, :cond_0

    .line 119
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$onUserIdCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;->onGetUserId(Ljava/lang/String;)V

    move-object p1, v1

    .line 129
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$onUserIdCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;->onGetUserId(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_2
    const-string p1, "pref_nubia_acct"

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 133
    iget-object p1, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 134
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$onUserIdCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;

    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;->onGetUserId(Ljava/lang/String;)V

    .line 137
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/NubiaAccountManager$4;->val$onUserIdCallback:Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;->onGetUserId(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
