.class public final Lcom/nike/adapt/BigfootApplicationState;
.super Ljava/lang/Object;
.source "BigfootApplicationState.kt"

# interfaces
.implements Landroidx/lifecycle/b;


# static fields
.field public static final h:Lcom/nike/adapt/BigfootApplicationState;

.field public static i:Z

.field public static j:Z

.field public static k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nike/adapt/BigfootApplicationState;

    invoke-direct {v0}, Lcom/nike/adapt/BigfootApplicationState;-><init>()V

    sput-object v0, Lcom/nike/adapt/BigfootApplicationState;->h:Lcom/nike/adapt/BigfootApplicationState;

    .line 1
    sget-object v1, Landroidx/lifecycle/a0;->m:Landroidx/lifecycle/a0;

    .line 2
    iget-object v1, v1, Landroidx/lifecycle/a0;->k:Landroidx/lifecycle/r;

    .line 3
    invoke-virtual {v1, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/p;)V

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/nike/adapt/BigfootApplicationState;->k:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStart(Landroidx/lifecycle/q;)V
    .locals 0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/nike/adapt/BigfootApplicationState;->k:Z

    return-void
.end method

.method public final onStop(Landroidx/lifecycle/q;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lcom/nike/adapt/BigfootApplicationState;->k:Z

    const/4 p1, 0x0

    .line 2
    sput-boolean p1, Lcom/nike/adapt/BigfootApplicationState;->i:Z

    .line 3
    sput-boolean p1, Lcom/nike/adapt/BigfootApplicationState;->j:Z

    return-void
.end method
