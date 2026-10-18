.class public final synthetic Lp4/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt6/o;


# instance fields
.field public final synthetic h:Ljava/lang/Class;

.field public final synthetic i:Ll5/j$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ll5/j$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/j;->h:Ljava/lang/Class;

    iput-object p2, p0, Lp4/j;->i:Ll5/j$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lp4/j;->h:Ljava/lang/Class;

    iget-object v1, p0, Lp4/j;->i:Ll5/j$a;

    invoke-static {v0, v1}, Lp4/n;->d(Ljava/lang/Class;Ll5/j$a;)Lp4/x$a;

    move-result-object v0

    return-object v0
.end method
