.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;
.super Ljava/lang/Object;
.source "OutputTextAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->content:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;)Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->content:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputTextAreaView$Entry;->content:Ljava/lang/String;

    return-object p0
.end method
