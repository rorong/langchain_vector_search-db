# README

In This sample application, we've integrated LangChain and OpenAI to empower users with advanced querying and similarity search capabilities. By leveraging LangChain's seamless integration with OpenAI's powerful language models, we've created a dynamic environment where users can interact with the Product model using natural language queries, enabling a more intuitive and user-friendly experience
The Product model is not just stored conventionally; it's saved using vector embedding, a cutting-edge technique that represents textual data as high-dimensional vectors in a PostgreSQL database. Leveraging the power of vector embeddings, each product description is transformed into a numerical representation, capturing its semantic meaning and context in a compact and efficient format.

By storing products as vectors in a PostgreSQL database, we unlock a myriad of possibilities for similarity search and advanced analytics. Vector-based storage enables lightning-fast retrieval of products based on their semantic similarity to a given query, facilitating intuitive product discovery and recommendation systems. Moreover, it empowers us to perform sophisticated operations such as clustering, classification, and trend analysis directly within the database, without the need for costly preprocessing or external services.

# SET UP

* Prerequisites
   postgres with vector extension pg > 13

    for mac/linux
    1. cd /tmp (tmp) ,cd (linux)
    2.  git clone --branch v0.6.2 https://github.com/pgvector/pgvector.git
    3.  cd pgvector
    4.  make
    5.  make install

**********

1. git clone https://github.com/rorong/langchain_vector_search-db.git
2. bundle
3. rails db:migrate
4. rails db:seed
5. add OPENAI_API_KEY in .env file
6. rails c
     * Product.embed!

      Product.where( country_of_origin: "Qatar")
      Product.ask("First product with name Ergonomic Concrete Shirt")
   
   
