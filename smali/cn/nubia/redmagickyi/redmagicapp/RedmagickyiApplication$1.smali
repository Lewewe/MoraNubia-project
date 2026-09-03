.class Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$1;
.super Ljava/lang/Object;
.source "RedmagickyiApplication.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->initUnity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$1;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
    .locals 1

    const/16 p0, 0x44d

    .line 103
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;->getMsgID()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 104
    const-string p0, "gamespace"

    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sceneName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 105
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 106
    move-object v0, p1

    check-cast v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSceneOrientation;->setOrientation(I)V

    :cond_0
    return-object p1
.end method
