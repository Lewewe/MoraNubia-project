.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageCapture;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageCapture.java"


# instance fields
.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageCapture;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageCapture;->path:Ljava/lang/String;

    return-void
.end method
