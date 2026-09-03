.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageVoiceAssistantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter$Type;
    }
.end annotation


# static fields
.field public static final TYPE_DIGITALHUMAN_AVATAR:I = 0x0

.field public static final TYPE_DIGITALHUMAN_FULLBODY:I = 0x1


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setType(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->type:I

    return-void
.end method
