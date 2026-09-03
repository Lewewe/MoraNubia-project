.class public Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;
.super Ljava/lang/Object;
.source "RedmagicPlaymate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SavedStates"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private broadcastArgs:[I

.field private gamePosition:I

.field private gameY:I

.field private supportArgs:[I

.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method copy(Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;)V
    .locals 1

    .line 279
    iget v0, p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->gameY:I

    iput v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->gameY:I

    .line 280
    iget v0, p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->gamePosition:I

    iput v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->gamePosition:I

    .line 281
    iget-object v0, p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->broadcastArgs:[I

    iput-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->broadcastArgs:[I

    .line 282
    iget-object p1, p1, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->supportArgs:[I

    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->supportArgs:[I

    return-void
.end method

.method public getBroadcastArgs()[I
    .locals 0

    .line 263
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->broadcastArgs:[I

    return-object p0
.end method

.method public getGamePosition()I
    .locals 0

    .line 255
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->gamePosition:I

    return p0
.end method

.method public getGameY()I
    .locals 0

    .line 247
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->gameY:I

    return p0
.end method

.method public getSupportArgs()[I
    .locals 0

    .line 271
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->supportArgs:[I

    return-object p0
.end method

.method public setBroadcastArgs([I)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->broadcastArgs:[I

    return-void
.end method

.method public setGamePosition(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->gamePosition:I

    return-void
.end method

.method public setGameY(I)V
    .locals 0

    .line 251
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->gameY:I

    return-void
.end method

.method public setSupportArgs([I)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicPlaymate$SavedStates;->supportArgs:[I

    return-void
.end method
