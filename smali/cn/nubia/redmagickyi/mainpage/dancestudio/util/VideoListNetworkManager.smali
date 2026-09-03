.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;
.super Ljava/lang/Object;
.source "VideoListNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;,
        Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoListNetworkManager"

.field private static callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static loadListManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->callbacks:Ljava/util/Map;

    .line 42
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;-><init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$1;)V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->loadListManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;

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

    .line 45
    const-string v0, "VideoListNetworkManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 37
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->callbacks:Ljava/util/Map;

    return-object v0
.end method

.method public static cancelLoadList(Z)V
    .locals 1

    .line 68
    const-string v0, "perform cancelLoadList"

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->Log(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->loadListManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->cancelLoadList(Z)V

    return-void
.end method

.method public static loadList(Landroid/content/Context;Z)Z
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform loadList, showDialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->Log(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->loadListManager:Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadListTask;->loadList(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static registCallback(Ljava/lang/Class;Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;)V
    .locals 2

    .line 49
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

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->Log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 51
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static toast(I)V
    .locals 2

    .line 73
    const-string v0, "make toast"

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->Log(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method

.method public static unregistCallback(Ljava/lang/Class;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregistCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->Log(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 58
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
