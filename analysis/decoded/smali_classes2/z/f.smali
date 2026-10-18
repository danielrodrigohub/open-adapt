.class public final synthetic Lz/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lz/d$e;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lz/d$e;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/f;->h:Lz/d$e;

    iput p2, p0, Lz/f;->i:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz/f;->h:Lz/d$e;

    iget v1, p0, Lz/f;->i:I

    invoke-virtual {v0, v1}, Lz/d$e;->d(I)V

    return-void
.end method
