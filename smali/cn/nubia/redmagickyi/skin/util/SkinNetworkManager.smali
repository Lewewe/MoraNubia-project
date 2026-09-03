.class public Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;
.super Ljava/lang/Object;
.source "SkinNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;,
        Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;,
        Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;,
        Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SkinNetworkManager"

.field private static callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static exchangeSkinManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

.field private static loadListManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->callbacks:Ljava/util/Map;

    .line 42
    new-instance v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;-><init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->loadListManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;

    .line 43
    new-instance v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;-><init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->exchangeSkinManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    .line 46
    const-string v0, "SkinNetworkManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->callbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public static cancelExchangeSkin()V
    .locals 1

    .line 84
    const-string v0, "perform cancelExchangeSkin"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->exchangeSkinManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->cancelExchangeSkin()V

    return-void
.end method

.method public static cancelLoadList(Z)V
    .locals 1

    .line 69
    const-string v0, "perform cancelLoadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->loadListManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->cancelLoadList(Z)V

    return-void
.end method

.method public static exchangeSkinFromAchievemnt(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform exchangeSkin, skin id is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->exchangeSkinManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->exchangeSkinFromAchievement(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V

    return-void
.end method

.method public static exchangeSkinFromActivity(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Ljava/lang/String;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform exchangeSkin, skin id is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->exchangeSkinManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-virtual {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->exchangeSkinFromActivity(Landroid/content/Context;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Ljava/lang/String;)V

    return-void
.end method

.method public static loadList(Landroid/content/Context;Z)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform loadList, showDialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->loadListManager:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$LoadListTask;->loadList(Landroid/content/Context;Z)V

    return-void
.end method

.method public static registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 52
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static toast(I)V
    .locals 2

    .line 89
    const-string v0, "make toast"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public static unregistCallback(Ljava/lang/Class;)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregistCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->Log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 59
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
