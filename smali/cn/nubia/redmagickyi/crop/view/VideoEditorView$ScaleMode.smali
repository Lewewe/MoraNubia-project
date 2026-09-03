.class final enum Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;
.super Ljava/lang/Enum;
.source "VideoEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/crop/view/VideoEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

.field public static final enum SM_FullScreen:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

.field public static final enum SM_None:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

.field public static final enum SM_WideScreen:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;
    .locals 3

    .line 61
    sget-object v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->SM_WideScreen:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    sget-object v1, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->SM_FullScreen:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    sget-object v2, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->SM_None:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    filled-new-array {v0, v1, v2}, [Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    const-string v1, "SM_WideScreen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->SM_WideScreen:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    .line 65
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    const-string v1, "SM_FullScreen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->SM_FullScreen:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    .line 67
    new-instance v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    const-string v1, "SM_None"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->SM_None:Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->$values()[Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->$VALUES:[Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    const-class v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;
    .locals 1

    .line 61
    sget-object v0, Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->$VALUES:[Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/crop/view/VideoEditorView$ScaleMode;

    return-object v0
.end method
