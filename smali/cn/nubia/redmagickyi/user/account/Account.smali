.class public enum Lcn/nubia/redmagickyi/user/account/Account;
.super Ljava/lang/Enum;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/user/account/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/user/account/Account;

.field public static final DEF_STRING_SHOW_PHONE:Ljava/lang/String; = "def_show_phone"

.field public static final enum INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/user/account/Account;
    .locals 1

    .line 11
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    filled-new-array {v0}, [Lcn/nubia/redmagickyi/user/account/Account;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcn/nubia/redmagickyi/user/account/Account$1;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/user/account/Account$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    .line 11
    invoke-static {}, Lcn/nubia/redmagickyi/user/account/Account;->$values()[Lcn/nubia/redmagickyi/user/account/Account;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/account/Account;->$VALUES:[Lcn/nubia/redmagickyi/user/account/Account;

    .line 17
    const-string v0, "Account"

    sput-object v0, Lcn/nubia/redmagickyi/user/account/Account;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/nubia/redmagickyi/user/account/Account$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/user/account/Account;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/user/account/Account;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcn/nubia/redmagickyi/user/account/Account;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/user/account/Account;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/user/account/Account;
    .locals 1

    .line 11
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->$VALUES:[Lcn/nubia/redmagickyi/user/account/Account;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/user/account/Account;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/user/account/Account;

    return-object v0
.end method


# virtual methods
.method public ClearAccountInfo(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->clearAccountInfo(Landroid/content/Context;)V

    return-void
.end method

.method public IsLogin()Z
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/Account;->getAccountInfo()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/Account;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "iS Login:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/Account;->getOpenId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 120
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/user/account/Account;->TAG:Ljava/lang/String;

    const-string v0, "NOT LOGIN"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getAccess_token()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAccountInfo()Lcn/nubia/redmagickyi/user/account/AccountInfo;
    .locals 0

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 134
    const-string p0, ""

    :try_start_0
    const-string v0, "def_show_phone"

    invoke-static {p1, v0, p0}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public getHeadImgUrl()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getAvatar()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getOpen_id()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getNickname()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getMobile()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reStoreAccountInfo(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->reconstructionFromStore(Landroid/content/Context;)Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    return-void
.end method

.method public setAvat(Ljava/lang/String;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->setAvatar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBirtday(Ljava/lang/String;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->setBirthday(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->setMobile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->setNickname(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->setGender(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateAccountInfo(Lcn/nubia/redmagickyi/user/account/AccountInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    goto :goto_0

    .line 26
    :cond_0
    sget-object p1, Lcn/nubia/redmagickyi/user/account/Account;->TAG:Ljava/lang/String;

    const-string v0, " updateAccountInfo is null ,set null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcn/nubia/redmagickyi/user/account/AccountInfo;->reconstructionFromStore()Lcn/nubia/redmagickyi/user/account/AccountInfo;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/account/Account;->mInfo:Lcn/nubia/redmagickyi/user/account/AccountInfo;

    :goto_0
    return-void
.end method
