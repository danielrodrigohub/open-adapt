.class public final synthetic Lp4/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lp4/x$c;


# instance fields
.field public final synthetic a:Lp4/g;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lp4/g;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/f;->a:Lp4/g;

    iput-object p2, p0, Lp4/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lp4/x;Ln3/b2;)V
    .locals 2

    iget-object v0, p0, Lp4/f;->a:Lp4/g;

    iget-object v1, p0, Lp4/f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lp4/g;->z(Ljava/lang/Object;Lp4/x;Ln3/b2;)V

    return-void
.end method
