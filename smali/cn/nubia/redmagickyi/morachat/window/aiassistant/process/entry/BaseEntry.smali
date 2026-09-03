.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;
.super Ljava/lang/Object;
.source "BaseEntry.java"


# instance fields
.field protected type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    return-void
.end method


# virtual methods
.method public getType()Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    return-object p0
.end method

.method public isAccompanyEntry()Z
    .locals 1

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_ACCOMPANY:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChatEntry()Z
    .locals 1

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_CHAT:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNormalEntry()Z
    .locals 1

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_NORMAL:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTipsEntry()Z
    .locals 1

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_TIPS:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnityEntry()Z
    .locals 1

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/BaseEntry;->type:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;->TYPE_UNITY:Lcn/nubia/redmagickyi/morachat/window/aiassistant/process/entry/EntryType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
