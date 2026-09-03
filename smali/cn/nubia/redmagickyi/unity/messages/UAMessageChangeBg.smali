.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageChangeBg.java"


# instance fields
.field bgId:I

.field sceneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setBgID(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->bgId:I

    return-void
.end method

.method public setSceneName(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeBg;->sceneName:Ljava/lang/String;

    return-void
.end method
