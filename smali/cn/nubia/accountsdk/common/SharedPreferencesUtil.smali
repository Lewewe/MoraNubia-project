.class public Lcn/nubia/accountsdk/common/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# static fields
.field private static mPubKeyArray:Ljava/lang/String; = "WI0IWYz4rNo"

.field private static mPubKeyArrayRl:Ljava/lang/String; = "QKBgQCZjcOZEcKeQqCFN"


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public static getmPubKeyArray(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 28
    sget-object p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mPubKeyArray:Ljava/lang/String;

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mPubKeyArrayRl:Ljava/lang/String;

    return-object p0
.end method

.method public static setmPubKeyArray(Ljava/lang/String;)V
    .locals 0

    .line 35
    sput-object p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mPubKeyArray:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getAll()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 183
    iget-object p0, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, v0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 139
    iget-object p0, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    .line 142
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, p1, v0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 161
    iget-object p0, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    .line 164
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 128
    iget-object p0, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    .line 131
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 150
    iget-object p0, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-wide p2

    .line 153
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, v0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-object p2

    .line 175
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 124
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-object p2

    .line 120
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;F)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcn/nubia/accountsdk/common/SharedPreferencesUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
