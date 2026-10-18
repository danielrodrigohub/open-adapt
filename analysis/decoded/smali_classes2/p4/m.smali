.class public final synthetic Lp4/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt6/o;


# instance fields
.field public final synthetic h:Lp4/n$a;

.field public final synthetic i:Ll5/j$a;


# direct methods
.method public synthetic constructor <init>(Lp4/n$a;Ll5/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/m;->h:Lp4/n$a;

    iput-object p2, p0, Lp4/m;->i:Ll5/j$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp4/m;->h:Lp4/n$a;

    iget-object v1, p0, Lp4/m;->i:Ll5/j$a;

    new-instance v2, Lp4/j0$b;

    iget-object v0, v0, Lp4/n$a;->a:Ls3/l;

    invoke-direct {v2, v1, v0}, Lp4/j0$b;-><init>(Ll5/j$a;Ls3/l;)V

    return-object v2
.end method
