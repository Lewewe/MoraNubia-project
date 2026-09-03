.class public Lcn/nubia/redmagickyi/user/utils/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static INSTANCE:Lcn/nubia/redmagickyi/user/utils/UserManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/user/utils/UserManager;
    .locals 2

    .line 21
    sget-object v0, Lcn/nubia/redmagickyi/user/utils/UserManager;->INSTANCE:Lcn/nubia/redmagickyi/user/utils/UserManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcn/nubia/redmagickyi/user/utils/UserManager;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/user/utils/UserManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/redmagickyi/user/utils/UserManager;->INSTANCE:Lcn/nubia/redmagickyi/user/utils/UserManager;

    .line 24
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/user/utils/UserManager;->INSTANCE:Lcn/nubia/redmagickyi/user/utils/UserManager;

    return-object v0
.end method


# virtual methods
.method public clearLoginData()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v1, "token"

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->remove(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "deviceToken"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getLatestMsgId()I
    .locals 2

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "msg_id"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMemberType()I
    .locals 2

    .line 50
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "member_type"

    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 2

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "nickName"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 2

    .line 95
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "roleName"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "token"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "uid"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isLogin()Z
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/utils/UserManager;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public saveDeviceToken(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "deviceToken"

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveLatestMsgId(I)V
    .locals 1

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "msg_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveLoginData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1, p1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string p1, "token"

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1, p1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "token"

    invoke-static {p1, v0, p2}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string p1, "uid"

    invoke-static {p0, p1, p3}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/user/utils/UserManager;->saveLoginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p4}, Lcn/nubia/redmagickyi/user/utils/UserManager;->saveNickName(Ljava/lang/String;)V

    return-void
.end method

.method public saveMemberType(I)V
    .locals 1

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "member_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveNickName(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "nickName"

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveRoleName(Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/utils/UserManager;->mContext:Landroid/content/Context;

    const-string v0, "roleName"

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/user/utils/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
