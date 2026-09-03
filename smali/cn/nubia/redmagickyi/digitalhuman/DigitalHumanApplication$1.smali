.class Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication$1;
.super Ljava/lang/Object;
.source "DigitalHumanApplication.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/UnitySDK$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication;->initUnity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/DigitalHumanApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
    .locals 0

    return-object p1
.end method
