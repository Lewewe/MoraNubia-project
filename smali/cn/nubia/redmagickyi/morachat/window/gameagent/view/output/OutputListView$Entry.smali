.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;
.super Ljava/lang/Object;
.source "OutputListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private actionId:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->name:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->actionId:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->title:Ljava/lang/String;

    .line 193
    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->content:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;)Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->content:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 0

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->actionId:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OutputListView$Entry;->title:Ljava/lang/String;

    return-object p0
.end method
