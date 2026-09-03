.class public Lcn/nubia/redmagickyi/model/PracticeRoomBeans;
.super Ljava/lang/Object;
.source "PracticeRoomBeans.java"


# static fields
.field public static final PRACTICE_ROOM_CHANGE_SKIN:I = 0x0

.field public static final PRACTICE_ROOM_DANCE_STUDIO:I = 0x1

.field public static final PRACTICE_ROOM_WALLPAPER_HUB:I = 0x2


# instance fields
.field private thumbnail:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/PracticeRoomBeans;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/PracticeRoomBeans;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 15
    iget p0, p0, Lcn/nubia/redmagickyi/model/PracticeRoomBeans;->type:I

    return p0
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/PracticeRoomBeans;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/PracticeRoomBeans;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcn/nubia/redmagickyi/model/PracticeRoomBeans;->type:I

    return-void
.end method
