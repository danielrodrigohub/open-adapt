.class public final synthetic Ln3/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt6/o;


# instance fields
.field public final synthetic h:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/u;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln3/u;->h:Landroid/content/Context;

    new-instance v1, Lp4/n;

    new-instance v2, Ls3/f;

    invoke-direct {v2}, Ls3/f;-><init>()V

    invoke-direct {v1, v0, v2}, Lp4/n;-><init>(Landroid/content/Context;Ls3/l;)V

    return-object v1
.end method
